import os
from pathlib import Path
from typing import Any, Dict, List
import yaml

def load_rules() -> List[Dict[str, Any]]:
    rules_path = os.getenv("RULES_PATH", "/app/config/masvs_fixes.yaml")
    p = Path(rules_path)
    if not p.exists():
        return []
    data = yaml.safe_load(p.read_text(encoding="utf-8")) or {}
    rules = data.get("rules", [])
    return rules if isinstance(rules, list) else []
