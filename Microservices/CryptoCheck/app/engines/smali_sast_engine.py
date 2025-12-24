import json
import re
from pathlib import Path
from typing import Any, Dict, List, Tuple

def _load_rules(rules_path: Path) -> List[Dict[str, Any]]:
    data = json.loads(rules_path.read_text(encoding="utf-8"))
    return data.get("rules", [])

def _iter_smali_files(root: Path):
    for p in root.rglob("*.smali"):
        yield p

def run_smali_sast(scan_root: Path, rules_path: Path) -> Dict[str, Any]:
    rules = _load_rules(rules_path)

    # precompile
    compiled: List[Tuple[Dict[str, Any], Any]] = []
    for r in rules:
        t = r.get("type")
        pat = r.get("pattern", "")
        if t == "SMALI_REGEX":
            compiled.append((r, re.compile(pat)))
        else:  # STRING
            compiled.append((r, pat))

    findings: List[Dict[str, Any]] = []

    for f in _iter_smali_files(scan_root):
        try:
            lines = f.read_text(encoding="utf-8", errors="ignore").splitlines()
        except Exception:
            continue

        for idx, line in enumerate(lines, start=1):
            for rule, comp in compiled:
                rtype = rule.get("type")

                matched = False
                if rtype == "SMALI_REGEX":
                    if comp.search(line):
                        matched = True
                else:  # STRING
                    if str(comp) in line:
                        matched = True

                if matched:
                    findings.append(
                        {
                            "id": rule["id"],
                            "title": rule["title"],
                            "severity": rule["severity"],
                            "evidence": {
                                "file": str(f),
                                "line": idx,
                                "match_preview": line.strip()[:200]
                            },
                            "recommendation": rule["recommendation"],
                            "cwe": rule.get("cwe", []),
                            "source": "CryptoCheck"
                        }
                    )

    # optional: dedupe (same rule + same file+line)
    seen = set()
    unique = []
    for x in findings:
        k = (x["id"], x["evidence"]["file"], x["evidence"]["line"])
        if k in seen:
            continue
        seen.add(k)
        unique.append(x)

    return {"findings": unique}
