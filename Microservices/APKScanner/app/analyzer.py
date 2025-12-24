# app/analyzer.py
import os
import re
import shutil
import subprocess
from pathlib import Path
from typing import Dict, Any, List, Optional
from urllib.parse import urlparse
from xml.etree import ElementTree as ET

from androguard.core.apk import APK

# Petit set d'exemple de permissions "dangereuses".
DANGEROUS_PERMS = {
    "android.permission.READ_SMS",
    "android.permission.SEND_SMS",
    "android.permission.RECEIVE_SMS",
    "android.permission.READ_CONTACTS",
    "android.permission.WRITE_CONTACTS",
    "android.permission.READ_CALL_LOG",
    "android.permission.WRITE_CALL_LOG",
    "android.permission.RECORD_AUDIO",
    "android.permission.CAMERA",
    "android.permission.ACCESS_FINE_LOCATION",
    "android.permission.ACCESS_COARSE_LOCATION",
}

ANDROID_NS = "{http://schemas.android.com/apk/res/android}"

URL_REGEX = re.compile(r"https?://[^\s\"'<>()]+")
BLACKLIST_HOSTS = {"schemas.android.com"}


def analyze_apk(apk_path: Path) -> Dict[str, Any]:
    """
    Analyse statique d'un APK :
    - Androguard: permissions, package, flags manifest, composants exportés
    - Endpoints: scan assets/res(raw) + fallback apktool decode si besoin
    - findings_list: vulnérabilités structurées (id, title, severity, evidence, recommendation)
    - apktool_used: bool
    """
    a = APK(str(apk_path))

    # Infos de base
    permissions = a.get_permissions() or []
    package_name = a.get_package()
    version_name = a.get_androidversion_name()
    version_code = a.get_androidversion_code()

    # Manifest via Androguard
    manifest_xml = a.get_android_manifest_xml()
    app_node = manifest_xml.find("application") if manifest_xml is not None else None

    debuggable = False
    allow_backup = False
    cleartext_permitted = False

    if app_node is not None:
        debuggable = app_node.get(ANDROID_NS + "debuggable") == "true"
        allow_backup = app_node.get(ANDROID_NS + "allowBackup") == "true"
        cleartext_permitted = app_node.get(ANDROID_NS + "usesCleartextTraffic") == "true"

    # Composants exportés
    exported_components: List[dict] = []

    def extract_exported(tag: str) -> None:
        if manifest_xml is None:
            return
        for node in manifest_xml.iter(tag):
            name = node.get(ANDROID_NS + "name")
            exported = node.get(ANDROID_NS + "exported")
            if exported == "true":
                exported_components.append(
                    {"type": tag, "name": name or "UNKNOWN", "exported": True}
                )

    for comp_tag in ["activity", "service", "receiver", "provider"]:
        extract_exported(comp_tag)

    dangerous_permissions = sorted(set(permissions) & DANGEROUS_PERMS)

    # Endpoints (scan léger)
    endpoints = _extract_endpoints_from_apk(a)

    # --- Apktool fallback ---
    apktool_used = False
    apktool_mode = os.environ.get("APKTOOL_MODE", "auto").lower()  # auto|require|off
    # auto: utiliser apktool si dispo ET endpoints vides
    # require: apktool obligatoire
    # off: ne jamais utiliser apktool

    decoded_dir: Optional[Path] = None
    if apktool_mode != "off":
        need_apktool = (apktool_mode == "require") or (apktool_mode == "auto" and not endpoints)
        if need_apktool:
            decoded_dir = _apktool_decode_to_folder(apk_path)
            if decoded_dir is not None:
                apktool_used = True

                # Flags + exported depuis manifest décodé (XML lisible)
                decoded_manifest = decoded_dir / "AndroidManifest.xml"
                if decoded_manifest.exists():
                    parsed = _parse_manifest_file(decoded_manifest)

                    if parsed["debuggable"] is not None:
                        debuggable = parsed["debuggable"]
                    if parsed["allow_backup"] is not None:
                        allow_backup = parsed["allow_backup"]
                    if parsed["cleartext_traffic_permitted"] is not None:
                        cleartext_permitted = parsed["cleartext_traffic_permitted"]

                    if parsed["exported_components"]:
                        exported_components = _merge_exported_components(
                            exported_components, parsed["exported_components"]
                        )

                # Endpoints depuis dossier décodé (assets/res/raw/res/values)
                decoded_endpoints = _scan_decoded_folder_for_urls(decoded_dir)
                if decoded_endpoints:
                    endpoints = sorted(set(endpoints) | set(decoded_endpoints))

                # Nettoyage optionnel
                cleanup = os.environ.get("APKTOOL_CLEANUP", "true").lower() in ("1", "true", "yes")
                if cleanup:
                    shutil.rmtree(decoded_dir, ignore_errors=True)

    # Vulnérabilités structurées
    findings_list = _build_findings_list(
        package_name=package_name,
        debuggable=debuggable,
        allow_backup=allow_backup,
        cleartext_permitted=cleartext_permitted,
        dangerous_permissions=dangerous_permissions,
        exported_components=exported_components,
        endpoints=endpoints,
    )

    return {
        "file_name": apk_path.name,
        "package_name": package_name,
        "version_name": version_name,
        "version_code": version_code,
        "permissions": permissions,
        "dangerous_permissions": dangerous_permissions,
        "debuggable": debuggable,
        "allow_backup": allow_backup,
        "cleartext_traffic_permitted": cleartext_permitted,
        "exported_components": exported_components,
        "endpoints": endpoints,
        "findings_list": findings_list,
        "apktool_used": apktool_used,
    }


# ---------------------------
# URL / endpoints helpers
# ---------------------------

def _is_plausible_url(u: str) -> bool:
    if not u or len(u) > 300:
        return False
    if "\x00" in u:
        return False
    if any(ord(c) < 32 for c in u):
        return False

    p = urlparse(u)
    if p.scheme not in ("http", "https") or not p.netloc:
        return False

    host = p.netloc.split("@")[-1].split(":")[0].lower()
    if host in BLACKLIST_HOSTS or host.endswith(".schemas.android.com"):
        return False

    return True


def _extract_endpoints_from_apk(a: APK) -> List[str]:
    """
    Extraction URLs SANS get_strings():
    - Manifest (filtré)
    - assets/ + res/raw/ (fichiers textuels)
    """
    urls = set()

    # Manifest
    try:
        manifest_xml = a.get_android_manifest_xml()
        if manifest_xml is not None:
            xml_text = ET.tostring(manifest_xml, encoding="unicode")
            for u in URL_REGEX.findall(xml_text):
                if _is_plausible_url(u):
                    urls.add(u)
    except Exception:
        pass

    # assets + res/raw
    try:
        for fn in a.get_files() or []:
            if not (fn.startswith("assets/") or fn.startswith("res/raw/")):
                continue
            if not fn.endswith((".txt", ".json", ".xml", ".html", ".js", ".properties", ".yaml", ".yml")):
                continue

            data = a.get_file(fn)
            if not data:
                continue
            if len(data) > 2_000_000:
                continue

            text = data.decode("utf-8", errors="ignore")
            for u in URL_REGEX.findall(text):
                if _is_plausible_url(u):
                    urls.add(u)
    except Exception:
        pass

    return sorted(urls)


# ---------------------------
# Apktool integration
# ---------------------------

def _apktool_cmd() -> Optional[List[str]]:
    """
    Retourne la commande apktool si dispo.
    - Si APKTOOL_CMD est défini: utiliser ça (ex: apktool)
    - Sinon: chercher apktool dans PATH
    """
    env_cmd = os.environ.get("APKTOOL_CMD", "").strip()
    if env_cmd:
        return [env_cmd]

    if shutil.which("apktool"):
        return ["apktool"]

    return None


def _apktool_decode_to_folder(apk_path: Path) -> Optional[Path]:
    """
    Decode via apktool dans DATA_DIR/apktool/<apk_stem>_<pid>
    Retourne le dossier output, ou None si apktool indisponible (en mode auto).
    """
    cmd = _apktool_cmd()
    mode = os.environ.get("APKTOOL_MODE", "auto").lower()

    if cmd is None:
        if mode == "require":
            raise RuntimeError("APKTOOL_MODE=require mais apktool introuvable (PATH ou APKTOOL_CMD).")
        return None

    data_dir = Path(os.environ.get("DATA_DIR", "data"))
    out_root = data_dir / "apktool"
    out_root.mkdir(parents=True, exist_ok=True)

    out_dir = out_root / f"{apk_path.stem}_{os.getpid()}"
    if out_dir.exists():
        shutil.rmtree(out_dir, ignore_errors=True)
    out_dir.mkdir(parents=True, exist_ok=True)

    timeout_s = int(os.environ.get("APKTOOL_TIMEOUT", "180"))

    # apktool d -f -o <out_dir> <apk_path>
    full_cmd = cmd + ["d", "-f", "-o", str(out_dir), str(apk_path)]
    try:
        subprocess.run(
            full_cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            timeout=timeout_s,
            check=True,
        )
        return out_dir
    except subprocess.TimeoutExpired:
        if mode == "require":
            raise RuntimeError(f"apktool decode timeout ({timeout_s}s).")
        return None
    except subprocess.CalledProcessError as e:
        if mode == "require":
            raise RuntimeError(f"apktool decode failed: {e.stderr[:4000]}")
        return None


def _scan_decoded_folder_for_urls(decoded_dir: Path) -> List[str]:
    """
    Scan du dossier decoded (apktool) pour URLs:
    - AndroidManifest.xml
    - assets/**
    - res/raw/**
    - res/values/*.xml (strings)
    """
    urls = set()
    candidates: List[Path] = []

    mf = decoded_dir / "AndroidManifest.xml"
    if mf.exists():
        candidates.append(mf)

    for sub in ["assets", "res/raw", "res/values"]:
        p = decoded_dir / sub
        if p.exists():
            for f in p.rglob("*"):
                if not f.is_file():
                    continue
                if f.suffix.lower() not in {".xml", ".json", ".txt", ".html", ".js", ".properties", ".yaml", ".yml"}:
                    continue
                try:
                    if f.stat().st_size > 2_000_000:
                        continue
                except Exception:
                    continue
                candidates.append(f)

    for f in candidates:
        try:
            text = f.read_text(encoding="utf-8", errors="ignore")
            for u in URL_REGEX.findall(text):
                if _is_plausible_url(u):
                    urls.add(u)
        except Exception:
            continue

    return sorted(urls)


def _parse_manifest_file(manifest_path: Path) -> Dict[str, Any]:
    """
    Parse AndroidManifest.xml (apktool decode) pour flags + exported components.
    """
    out: Dict[str, Any] = {
        "debuggable": None,
        "allow_backup": None,
        "cleartext_traffic_permitted": None,
        "exported_components": [],
    }

    try:
        tree = ET.parse(manifest_path)
        root = tree.getroot()
        app_node = root.find("application")

        if app_node is not None:
            v = app_node.get(ANDROID_NS + "debuggable")
            out["debuggable"] = (v == "true") if v is not None else None

            v = app_node.get(ANDROID_NS + "allowBackup")
            out["allow_backup"] = (v == "true") if v is not None else None

            v = app_node.get(ANDROID_NS + "usesCleartextTraffic")
            out["cleartext_traffic_permitted"] = (v == "true") if v is not None else None

        exported_components: List[dict] = []

        def extract(tag: str) -> None:
            for node in root.iter(tag):
                name = node.get(ANDROID_NS + "name")
                exported = node.get(ANDROID_NS + "exported")
                if exported == "true":
                    exported_components.append({"type": tag, "name": name or "UNKNOWN", "exported": True})

        for comp_tag in ["activity", "service", "receiver", "provider"]:
            extract(comp_tag)

        out["exported_components"] = exported_components
        return out
    except Exception:
        return out


def _merge_exported_components(a: List[dict], b: List[dict]) -> List[dict]:
    seen = set()
    merged: List[dict] = []
    for item in (a + b):
        key = (item.get("type"), item.get("name"), item.get("exported"))
        if key in seen:
            continue
        seen.add(key)
        merged.append(item)
    return merged


# ---------------------------
# findings_list generation
# ---------------------------

def _build_findings_list(
    package_name: str,
    debuggable: bool,
    allow_backup: bool,
    cleartext_permitted: bool,
    dangerous_permissions: List[str],
    exported_components: List[dict],
    endpoints: List[str],
) -> List[Dict[str, Any]]:
    findings: List[Dict[str, Any]] = []

    def add_finding(fid: str, title: str, severity: str, evidence: Any, recommendation: str) -> None:
        findings.append(
            {
                "id": fid,
                "title": title,
                "severity": severity,  # INFO / LOW / MEDIUM / HIGH / CRITICAL
                "evidence": evidence,
                "recommendation": recommendation,
                "source": "APKScanner",
                "package": package_name,
            }
        )

    if debuggable:
        add_finding(
            "APK-001",
            "Application en mode debug (android:debuggable=true)",
            "HIGH",
            {"android:debuggable": True},
            'Désactiver le mode debug en production (android:debuggable="false" ou absent) et utiliser buildTypes release.',
        )

    if allow_backup:
        add_finding(
            "APK-002",
            "Sauvegarde Android activée (android:allowBackup=true)",
            "MEDIUM",
            {"android:allowBackup": True},
            'Désactiver allowBackup en production si données sensibles : android:allowBackup="false".',
        )

    if cleartext_permitted:
        add_finding(
            "APK-003",
            "Trafic en clair autorisé (android:usesCleartextTraffic=true)",
            "HIGH",
            {"android:usesCleartextTraffic": True},
            'Désactiver le cleartext (android:usesCleartextTraffic="false") et forcer HTTPS. Utiliser Network Security Config si exceptions.',
        )

    if dangerous_permissions:
        add_finding(
            "APK-004",
            "Permissions dangereuses détectées",
            "MEDIUM",
            {"dangerous_permissions": dangerous_permissions},
            "Réduire les permissions au strict nécessaire (moindre privilège) et demander au runtime uniquement quand requis.",
        )

    if exported_components:
        has_provider = any(c.get("type") == "provider" for c in exported_components)
        severity = "HIGH" if has_provider else "MEDIUM"
        add_finding(
            "APK-005",
            "Composants Android exportés (surface d'attaque accrue)",
            severity,
            {"exported_components": exported_components},
            'Limiter les composants exportés (android:exported="false"). Si nécessaire, protéger avec permissions et contrôles d’accès.',
        )

    http_endpoints = [u for u in endpoints if u.lower().startswith("http://")]
    if http_endpoints:
        add_finding(
            "APK-006",
            "Endpoints en HTTP détectés (risque MITM)",
            "HIGH",
            {"http_endpoints": http_endpoints},
            "Migrer vers HTTPS, éviter endpoints HTTP en clair, et configurer correctement TLS.",
        )

    if not findings:
        add_finding(
            "APK-000",
            "Aucune vulnérabilité basée sur les règles actuelles",
            "INFO",
            {},
            "Ajouter d'autres règles MASVS/MAS (crypto, stockage local, exported+intent-filters, etc.).",
        )

    return findings
