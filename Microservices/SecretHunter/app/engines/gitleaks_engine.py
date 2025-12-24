# app/engines/gitleaks_engine.py
import json
import shutil
import subprocess
from pathlib import Path
from typing import Any, Dict, List, Optional

from ..utils import mask_secret

def _find_gitleaks_bin(explicit: Optional[str] = None) -> Optional[str]:
    if explicit:
        return explicit
    return shutil.which("gitleaks")

def run_gitleaks_engine(work_dir: Path, gitleaks_bin: Optional[str] = None) -> Dict[str, Any]:
    """
    Runs: gitleaks detect --source <dir> --no-git --report-format json --report-path out.json --exit-code 0
    If binary missing -> returns error but doesn't crash scan.
    """
    bin_path = _find_gitleaks_bin(gitleaks_bin)
    if not bin_path:
        return {
            "engine": "gitleaks",
            "findings": [],
            "stats": {"matches": 0},
            "error": "gitleaks binary not found in PATH (install it or enable in Dockerfile).",
        }

    report_path = work_dir / "_gitleaks_report.json"

    cmd = [
        bin_path,
        "detect",
        "--source", str(work_dir),
        "--no-git",
        "--report-format", "json",
        "--report-path", str(report_path),
        "--exit-code", "0",
        "--redact",
    ]

    try:
        subprocess.run(cmd, check=True, capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        # Sometimes gitleaks returns non-zero even with --exit-code, so we handle report if exists
        pass

    findings: List[Dict[str, Any]] = []
    matches = 0

    if report_path.exists():
        try:
            raw = json.loads(report_path.read_text(encoding="utf-8"))
        except Exception:
            raw = []

        if isinstance(raw, list):
            for item in raw:
                matches += 1
                rule_id = item.get("RuleID") or "UNKNOWN"
                desc = item.get("Description") or "Secret détecté par GitLeaks"
                file_ = item.get("File") or "UNKNOWN"
                secret = item.get("Secret") or item.get("Match") or ""
                preview = mask_secret(secret)

                findings.append(
                    {
                        "id": f"SH-GL-{rule_id}",
                        "title": desc,
                        "severity": "HIGH",
                        "evidence": {
                            "engine": "gitleaks",
                            "file": file_,
                            "rule": rule_id,
                            "match_preview": preview,
                            "start_line": item.get("StartLine"),
                            "end_line": item.get("EndLine"),
                        },
                        "recommendation": "Révoquer/rotater le secret, supprimer du code/historique, utiliser un gestionnaire de secrets et des variables d’environnement.",
                    }
                )

    return {
        "engine": "gitleaks",
        "findings": findings,
        "stats": {"matches": matches},
    }
