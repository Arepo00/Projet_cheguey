# app/engines/yara_engine.py
from pathlib import Path
from typing import Any, Dict, List

from ..utils import iter_files, mask_secret, is_probably_text_file, safe_read_text

def run_yara_engine(work_dir: Path, rules_path: Path) -> Dict[str, Any]:
    """
    Uses yara-python if installed.
    If rules compilation fails, we return an error but do NOT crash the whole scan.
    """
    try:
        import yara  # type: ignore
    except Exception as e:
        return {
            "engine": "yara",
            "findings": [],
            "stats": {"scanned_files": 0, "matches": 0},
            "error": f"yara-python not installed: {e}",
        }

    try:
        rules = yara.compile(filepath=str(rules_path))
    except Exception as e:
        return {
            "engine": "yara",
            "findings": [],
            "stats": {"scanned_files": 0, "matches": 0},
            "error": f"YARA compile error ({rules_path}): {e}",
        }

    findings: List[Dict[str, Any]] = []
    scanned_files = 0
    matches_count = 0

    for f in iter_files(work_dir):
        # YARA can scan binaries too, but to reduce noise we keep text-ish by default
        if not is_probably_text_file(f):
            continue
        scanned_files += 1

        try:
            data = f.read_bytes()
        except Exception:
            continue

        try:
            matches = rules.match(data=data)
        except Exception:
            continue

        if not matches:
            continue

        # Add some context preview
        text_preview = safe_read_text(f, max_bytes=50_000)
        preview = mask_secret(text_preview[:200])

        for m in matches:
            matches_count += 1
            findings.append(
                {
                    "id": f"SH-YR-{m.rule}",
                    "title": f"Pattern YARA détecté: {m.rule}",
                    "severity": "HIGH",
                    "evidence": {
                        "engine": "yara",
                        "file": str(f.relative_to(work_dir)),
                        "rule": m.rule,
                        "preview": preview,
                    },
                    "recommendation": "Vérifier le fichier concerné, supprimer le secret, révoquer/rotater le token et utiliser un gestionnaire de secrets.",
                }
            )

    return {
        "engine": "yara",
        "findings": findings,
        "stats": {"scanned_files": scanned_files, "matches": matches_count},
    }
