# app/scanner.py
import subprocess
import zipfile
import struct
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

from androguard.core.apk import APK

from .db import WORK_DIR
from .utils import Timer, ensure_dir, sha256_file
from .engines.regex_engine import run_regex_engine
from .engines.yara_engine import run_yara_engine
from .engines.gitleaks_engine import run_gitleaks_engine

SERVICE_NAME = "SecretHunter"


def _extract_apk(apk_path: Path, out_dir: Path) -> int:
    ensure_dir(out_dir)
    extracted = 0
    with zipfile.ZipFile(apk_path, "r") as z:
        for member in z.infolist():
            if ".." in member.filename or member.filename.startswith(("/", "\\")):
                continue
            z.extract(member, out_dir)
            extracted += 1
    return extracted


def _get_package(apk_path: Path) -> Optional[str]:
    try:
        a = APK(str(apk_path))
        return a.get_package()
    except Exception:
        return None


def _apktool_decode(apk_path: Path, out_dir: Path) -> Tuple[bool, Optional[str]]:
    """
    Approach #1:
    apktool decode -> produces smali + decoded resources (best for regex/yara/gitleaks).
    """
    ensure_dir(out_dir)
    cmd = ["apktool", "d", "-f", "-o", str(out_dir), str(apk_path)]
    p = subprocess.run(cmd, capture_output=True, text=True)
    if p.returncode != 0:
        err = (p.stderr or p.stdout or "").strip()
        return False, err[-1500:] if err else "apktool failed (no output)"
    return True, None


def _uleb128(data: bytes, off: int) -> Tuple[int, int]:
    """Decode ULEB128 value starting at off. Return (value, new_off)."""
    result = 0
    shift = 0
    while True:
        b = data[off]
        off += 1
        result |= (b & 0x7F) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
        if shift > 35:
            break
    return result, off


def _dex_extract_strings(dex: bytes, max_strings: int = 200000, max_len: int = 4000) -> List[str]:
    """
    Approach #2:
    Extract strings from DEX without using unstable androguard internal modules.
    """
    if len(dex) < 0x70:
        return []
    magic = dex[:8]
    if not (magic.startswith(b"dex\n") and magic.endswith(b"\x00")):
        return []

    # header: string_ids_size @ 0x38, string_ids_off @ 0x3C
    string_ids_size = struct.unpack_from("<I", dex, 0x38)[0]
    string_ids_off = struct.unpack_from("<I", dex, 0x3C)[0]

    if string_ids_off <= 0 or string_ids_off + string_ids_size * 4 > len(dex):
        return []

    n = min(string_ids_size, max_strings)
    strings: List[str] = []

    for i in range(n):
        (str_off,) = struct.unpack_from("<I", dex, string_ids_off + i * 4)
        if str_off <= 0 or str_off >= len(dex):
            continue

        try:
            _, p = _uleb128(dex, str_off)  # utf16 length, not needed
            # read until null terminator
            end = dex.find(b"\x00", p)
            if end == -1:
                continue
            raw = dex[p:end]
            if not raw:
                continue
            s = raw.decode("utf-8", errors="ignore")
            s = s.strip()
            if 0 < len(s) <= max_len:
                strings.append(s)
        except Exception:
            continue

    return strings


def _write_dex_strings_file(apk_path: Path, out_file: Path) -> Tuple[int, Optional[str]]:
    """
    Reads classes*.dex from APK and writes extracted strings to out_file (one per line).
    Returns (count, error).
    """
    try:
        all_strings: List[str] = []
        with zipfile.ZipFile(apk_path, "r") as z:
            dex_names = [n for n in z.namelist() if n.startswith("classes") and n.endswith(".dex")]
            for name in dex_names:
                dex = z.read(name)
                all_strings.extend(_dex_extract_strings(dex))

        ensure_dir(out_file.parent)
        out_file.write_text("\n".join(all_strings), encoding="utf-8", errors="ignore")
        return len(all_strings), None
    except Exception as e:
        return 0, str(e)


def scan_secrets(
    apk_path: Path,
    parent_scan_id: Optional[int],
    enable_regex: bool = True,
    enable_yara: bool = True,
    enable_gitleaks: bool = True,
    enable_apktool: bool = True,
    enable_dex_strings: bool = True,
    regex_patterns_path: Optional[Path] = None,
    yara_rules_path: Optional[Path] = None,
    gitleaks_bin: Optional[str] = None,
) -> Dict[str, Any]:
    timer = Timer()

    sha256 = sha256_file(apk_path)
    package = _get_package(apk_path)

    work_dir = WORK_DIR / sha256
    ensure_dir(work_dir)

    extracted_files = _extract_apk(apk_path, work_dir)

    # Optionally generate dex_strings.txt in work_dir
    dex_strings_count = 0
    dex_strings_error: Optional[str] = None
    if enable_dex_strings:
        dex_strings_count, dex_strings_error = _write_dex_strings_file(
            apk_path, work_dir / "dex_strings.txt"
        )

    # Optionally apktool decode
    scan_root = work_dir  # fallback
    apktool_ok = False
    apktool_error: Optional[str] = None
    if enable_apktool:
        apktool_out = work_dir / "apktool_out"
        apktool_ok, apktool_error = _apktool_decode(apk_path, apktool_out)
        if apktool_ok:
            scan_root = apktool_out

    findings_list: List[Dict[str, Any]] = []
    engines_ok: List[str] = []
    engine_errors: List[str] = []

    # REGEX
    if enable_regex:
        try:
            if regex_patterns_path is None:
                regex_patterns_path = Path("config") / "regex_patterns.json"
            out = run_regex_engine(scan_root, regex_patterns_path)
            engines_ok.append("regex")
            findings_list.extend(out.get("findings", []))
        except Exception as e:
            engine_errors.append(f"regex engine failed: {e}")

    # YARA
    if enable_yara:
        try:
            if yara_rules_path is None:
                yara_rules_path = Path("rules") / "secrets.yar"
            out = run_yara_engine(scan_root, yara_rules_path)
            if out.get("error"):
                engine_errors.append(out["error"])
            else:
                engines_ok.append("yara")
            findings_list.extend(out.get("findings", []))
        except Exception as e:
            engine_errors.append(f"yara engine failed: {e}")

    # GITLEAKS (scan decoded folder if available; otherwise work_dir)
    if enable_gitleaks:
        try:
            out = run_gitleaks_engine(scan_root, gitleaks_bin=gitleaks_bin)
            if out.get("error"):
                engine_errors.append(out["error"])
            else:
                engines_ok.append("gitleaks")
            findings_list.extend(out.get("findings", []))
        except Exception as e:
            engine_errors.append(f"gitleaks engine failed: {e}")

    # status
    if engines_ok:
        status = "COMPLETED"
        error = "; ".join(engine_errors) if engine_errors else None
    else:
        status = "FAILED"
        error = "; ".join(engine_errors) if engine_errors else "No engines executed"

    payload: Dict[str, Any] = {
        "scan_id": None,  # filled by DB
        "parent_scan_id": parent_scan_id,
        "service": SERVICE_NAME,
        "package": package,
        "findings_list": findings_list,
        "meta": {
            "status": status,
            "error": error,
            "duration_ms": timer.ms(),
            "engine": engines_ok,
            "context": {
                "file_name": apk_path.name,
                "sha256": sha256,
                "extracted_files": extracted_files,
                "scan_root": str(scan_root),
                "apktool_enabled": enable_apktool,
                "apktool_ok": apktool_ok,
                "apktool_error": apktool_error,
                "dex_strings_enabled": enable_dex_strings,
                "dex_strings_count": dex_strings_count,
                "dex_strings_error": dex_strings_error,
                "secrets_count": len(findings_list),
            },
        },
    }
    return payload
