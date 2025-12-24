# app/scanner.py
import json
import os
import shutil
import time
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

from .utils import Timer, ensure_dir

SERVICE_NAME = "NetworkInspector"

DEFAULT_FLOWS_FILE = "/app/data/flows.jsonl"
DEFAULT_SNAPSHOT_DIR = "/app/data/snapshots"
DEFAULT_KEEP_SNAPSHOTS = 10


def _now_ts() -> float:
    return time.time()


def _read_env_int(name: str, default: int) -> int:
    try:
        return int(os.getenv(name, str(default)))
    except Exception:
        return default


def _snapshot_flows(flows_file: Path) -> Tuple[Optional[Path], Optional[str]]:
    """
    Option A:
      - mitmproxy écrit dans flows.jsonl pendant que l'API lit
      - on évite tout conflit en copiant flows.jsonl vers un snapshot stable
    """
    snapshot_dir = Path(os.getenv("SNAPSHOT_DIR", DEFAULT_SNAPSHOT_DIR))
    ensure_dir(snapshot_dir)

    keep = _read_env_int("SNAPSHOT_KEEP", DEFAULT_KEEP_SNAPSHOTS)

    if not flows_file.exists():
        return None, f"flows file not found: {flows_file}"

    ts = int(_now_ts())
    snapshot_path = snapshot_dir / f"flows_snapshot_{ts}_{os.getpid()}.jsonl"

    try:
        # copy is atomic enough for our use-case (stable snapshot)
        shutil.copyfile(flows_file, snapshot_path)
    except Exception as e:
        return None, f"snapshot copy failed: {e}"

    # best-effort cleanup (keep last N snapshots)
    try:
        snaps = sorted(snapshot_dir.glob("flows_snapshot_*.jsonl"), key=lambda p: p.stat().st_mtime, reverse=True)
        for old in snaps[keep:]:
            try:
                old.unlink(missing_ok=True)
            except Exception:
                pass
    except Exception:
        pass

    return snapshot_path, None


def _load_flows_from_jsonl(
    jsonl_path: Path,
    max_flows: int,
    since_seconds: Optional[int],
) -> List[Dict[str, Any]]:
    """
    Parse JSONL snapshot and return flows (filtered).
    We only read up to max_flows (latest flows) to keep it fast.
    """
    if not jsonl_path.exists():
        return []

    # Read all lines, then take last N (keeps behavior similar to "recent traffic")
    # For huge files: later we can optimize (tail). For now snapshot makes it safe & simple.
    try:
        lines = jsonl_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    except Exception:
        return []

    if max_flows and max_flows > 0:
        lines = lines[-max_flows:]

    flows: List[Dict[str, Any]] = []
    now = _now_ts()
    min_ts = None
    if since_seconds is not None:
        try:
            min_ts = now - float(since_seconds)
        except Exception:
            min_ts = None

    for line in lines:
        line = line.strip()
        if not line:
            continue
        try:
            obj = json.loads(line)
        except Exception:
            continue

        # Optional time filter
        if min_ts is not None:
            ts = obj.get("timestamp")
            try:
                if ts is None or float(ts) < min_ts:
                    continue
            except Exception:
                continue

        flows.append(obj)

    return flows


def _rule_findings_from_flow(flow: Dict[str, Any]) -> List[Dict[str, Any]]:
    """
    Minimal rules:
      - HTTP cleartext
      - Missing HTTPS security headers
      - TLS info
    (Tu ajouteras tes 100/100/100 règles après — ici on garde le moteur stable)
    """
    findings: List[Dict[str, Any]] = []

    flow_id = flow.get("flow_id")
    req = flow.get("request") or {}
    resp = flow.get("response") or {}
    conn = (resp.get("connection") or {}) if isinstance(resp, dict) else {}

    url = req.get("url")
    host = req.get("host")
    scheme = req.get("scheme")

    # 1) HTTP cleartext
    if scheme == "http":
        findings.append(
            {
                "id": "NI-NET-001",
                "title": "Communication HTTP en clair détectée",
                "severity": "HIGH",
                "evidence": {
                    "flow_id": flow_id,
                    "method": req.get("method"),
                    "url": url,
                    "host": host,
                },
                "recommendation": "Forcer HTTPS (TLS) pour toutes les communications. Bloquer HTTP via Network Security Config (Android) et redirections serveur.",
            }
        )

    # 2) Headers security (only if HTTPS)
    if scheme == "https":
        headers = resp.get("headers") or {}
        # normalize keys
        hdr_keys = {str(k).lower() for k in headers.keys()} if isinstance(headers, dict) else set()

        must_have = ["strict-transport-security", "x-content-type-options", "x-frame-options"]
        missing_must = [h for h in must_have if h not in hdr_keys]
        if missing_must:
            findings.append(
                {
                    "id": "NI-HDR-001",
                    "title": "En-têtes de sécurité manquants (HTTPS)",
                    "severity": "MEDIUM",
                    "evidence": {"flow_id": flow_id, "host": host, "missing": [h.title() if h.startswith("x-") else "Strict-Transport-Security" for h in missing_must]},
                    "recommendation": "Ajouter des en-têtes de sécurité côté serveur (ex: Strict-Transport-Security, X-Content-Type-Options, X-Frame-Options, etc.).",
                }
            )

        recommended = ["content-security-policy", "referrer-policy", "permissions-policy"]
        missing_rec = [h for h in recommended if h not in hdr_keys]
        if missing_rec:
            findings.append(
                {
                    "id": "NI-HDR-002",
                    "title": "En-têtes recommandés absents (amélioration)",
                    "severity": "LOW",
                    "evidence": {"flow_id": flow_id, "host": host, "missing": [h.replace("-", " ").title().replace(" ", "-") for h in missing_rec]},
                    "recommendation": "Envisager CSP/Permissions-Policy/Referrer-Policy pour durcir la surface d’attaque.",
                }
            )

    # 3) TLS info (informational)
    if scheme == "https":
        tls_v = conn.get("tls_version")
        cipher = conn.get("cipher")
        if not tls_v or not cipher:
            findings.append(
                {
                    "id": "NI-TLS-001",
                    "title": "Informations TLS incomplètes",
                    "severity": "LOW",
                    "evidence": {"flow_id": flow_id, "host": host, "tls_version": tls_v, "cipher": cipher},
                    "recommendation": "Vérifier que l’interception HTTPS est correcte (certificat mitm installé côté client) pour obtenir les détails TLS/cipher.",
                }
            )

    return findings


def scan_network(
    parent_scan_id: int,
    package: Optional[str],
    max_flows: int = 50,
    since_seconds: Optional[int] = None,
) -> Dict[str, Any]:
    timer = Timer()

    flows_file = Path(os.getenv("FLOWS_FILE", DEFAULT_FLOWS_FILE))

    snapshot_path, snap_err = _snapshot_flows(flows_file)
    flows_read = 0
    findings_list: List[Dict[str, Any]] = []

    if snapshot_path is not None:
        flows = _load_flows_from_jsonl(snapshot_path, max_flows=max_flows, since_seconds=since_seconds)
        flows_read = len(flows)

        for flow in flows:
            findings_list.extend(_rule_findings_from_flow(flow))

        status = "COMPLETED"
        error = None
        engine_ok = ["mitmproxy"]
    else:
        status = "FAILED"
        error = snap_err or "snapshot failed"
        engine_ok = []

    payload: Dict[str, Any] = {
        "scan_id": None,  # DB fills it
        "parent_scan_id": parent_scan_id,
        "service": SERVICE_NAME,
        "package": package,
        "findings_list": findings_list,
        "meta": {
            "status": status,
            "error": error,
            "duration_ms": timer.ms(),
            "engine": engine_ok,
            "created_at": int(_now_ts()),
            "context": {
                "flows_file": str(flows_file),
                "flows_read": flows_read,
                "findings_count": len(findings_list),
                "since_seconds": since_seconds,
                "max_flows": max_flows,
                # ✅ NEW: tells exactly what source was used
                "flows_source": {
                    "mode": "snapshot_copy",
                    "source_file": str(flows_file),
                    "snapshot_file": str(snapshot_path) if snapshot_path else None,
                    "snapshot_error": snap_err,
                },
            },
        },
    }
    return payload
