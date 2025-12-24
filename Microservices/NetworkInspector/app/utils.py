import hashlib
import time
from pathlib import Path
from typing import Any, Dict

class Timer:
    def __init__(self) -> None:
        self._start = time.time()

    def ms(self) -> int:
        return int((time.time() - self._start) * 1000)

def ensure_dir(p: Path) -> None:
    p.mkdir(parents=True, exist_ok=True)

def sha256_text(s: str) -> str:
    return hashlib.sha256(s.encode("utf-8", errors="ignore")).hexdigest()

def safe_preview(value: str, limit: int = 200) -> str:
    if value is None:
        return ""
    v = str(value)
    return v[:limit] + ("..." if len(v) > limit else "")
