from pathlib import Path
from typing import Any, Dict, List, Optional

from androguard.core.apk import APK

from .db import WORK_DIR
from .utils import Timer, ensure_dir, sha256_file
from .engines.apktool_engine import apktool_decode
from .engines.smali_sast_engine import run_smali_sast

SERVICE_NAME = "CryptoCheck"

def _get_package(apk_path: Path) -> Optional[str]:
    try:
        return APK(str(apk_path)).get_package()
    except Exception:
        return None

def scan_crypto(
    apk_path: Path,
    parent_scan_id: Optional[int],
    rules_path: Optional[Path] = None,
    enable_apktool: bool = True,
) -> Dict[str, Any]:
    timer = Timer()
    sha256 = sha256_file(apk_path)
    package = _get_package(apk_path)

    work_dir = WORK_DIR / sha256
    ensure_dir(work_dir)

    scan_root = work_dir
    apktool_ok = False
    apktool_error: Optional[str] = None

    if enable_apktool:
        out_dir = work_dir / "apktool_out"
        apktool_ok, apktool_error = apktool_decode(apk_path, out_dir)
        if apktool_ok:
            scan_root = out_dir

    if rules_path is None:
        rules_path = Path("config") / "crypto_rules.json"

    engines_ok: List[str] = []
    engine_errors: List[str] = []
    findings_list: List[Dict[str, Any]] = []

    try:
        out = run_smali_sast(scan_root, rules_path)
        findings_list.extend(out.get("findings", []))
        engines_ok.append("smali_sast")
        if enable_apktool and apktool_ok:
            engines_ok.append("apktool")
    except Exception as e:
        engine_errors.append(f"sast failed: {e}")

    status = "COMPLETED" if engines_ok else "FAILED"
    error = "; ".join(engine_errors) if engine_errors else None

    return {
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
                "scan_root": str(scan_root),
                "apktool_enabled": enable_apktool,
                "apktool_ok": apktool_ok,
                "apktool_error": apktool_error,
                "findings_count": len(findings_list),
            },
        },
    }
