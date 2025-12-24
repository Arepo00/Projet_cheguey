# app/engines/regex_engine.py
import json
import re
from pathlib import Path
from typing import Any, Dict, List, Tuple

from ..utils import iter_files, is_probably_text_file, safe_read_text, mask_secret

def load_regex_patterns(patterns_path: Path) -> List[Dict[str, Any]]:
    """
    Expected JSON format (example):
    [
      {"id":"SH-RX-001","title":"AWS Access Key","severity":"HIGH",
       "pattern":"AKIA[0-9A-Z]{16}","recommendation":"..."},
      ...
    ]
    """
    data = json.loads(patterns_path.read_text(encoding="utf-8"))
    if not isinstance(data, list):
        raise ValueError("regex_patterns.json must be a JSON array")
    return data

def compile_patterns(patterns: List[Dict[str, Any]]) -> List[Tuple[Dict[str, Any], re.Pattern]]:
    compiled: List[Tuple[Dict[str, Any], re.Pattern]] = []
    for p in patterns:
        pat = p.get("pattern")
        if not pat:
            continue
        flags = 0
        if p.get("ignore_case", False):
            flags |= re.IGNORECASE
        compiled.append((p, re.compile(pat, flags)))
    return compiled

def run_regex_engine(work_dir: Path, patterns_path: Path) -> Dict[str, Any]:
    """
    Returns:
      {
        "engine": "regex",
        "findings": [...],
        "stats": {"scanned_files": x, "matches": y}
      }
    """
    patterns = load_regex_patterns(patterns_path)
    compiled = compile_patterns(patterns)

    findings: List[Dict[str, Any]] = []
    scanned_files = 0
    matches = 0

    for f in iter_files(work_dir):
        if not is_probably_text_file(f):
            continue

        scanned_files += 1
        text = safe_read_text(f)

        for p, rx in compiled:
            for m in rx.finditer(text):
                matches += 1
                raw_match = m.group(0)
                preview = mask_secret(raw_match)

                findings.append(
                    {
                        "id": p.get("id", "SH-RX-XXX"),
                        "title": p.get("title", "Secret détecté via regex"),
                        "severity": p.get("severity", "MEDIUM"),
                        "evidence": {
                            "engine": "regex",
                            "file": str(f.relative_to(work_dir)),
                            "match_preview": preview,
                        },
                        "recommendation": p.get(
                            "recommendation",
                            "Supprimer le secret du code, le révoquer/rotater et utiliser un gestionnaire de secrets.",
                        ),
                    }
                )

    return {
        "engine": "regex",
        "findings": findings,
        "stats": {"scanned_files": scanned_files, "matches": matches},
    }
