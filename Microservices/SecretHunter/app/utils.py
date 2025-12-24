# app/utils.py
import hashlib
import os
import re
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Iterator, Optional

TEXT_EXT_ALLOWLIST = {
    ".txt", ".xml", ".json", ".yml", ".yaml", ".properties", ".gradle", ".kt", ".java",
    ".js", ".ts", ".py", ".rb", ".go", ".php", ".cs", ".swift", ".m", ".mm",
    ".html", ".css", ".md", ".ini", ".cfg", ".conf",
}

BINARY_EXT_BLOCKLIST = {
    ".png", ".jpg", ".jpeg", ".gif", ".webp", ".ico",
    ".dex", ".so", ".jar", ".class", ".arsc", ".ttf", ".otf",
    ".mp3", ".mp4", ".wav", ".avi", ".pdf",
}

def utc_now_iso() -> str:
    return datetime.now(timezone.utc).isoformat()

def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()

def safe_read_text(path: Path, max_bytes: int = 512_000) -> str:
    """
    Read as text with fallback; avoids loading huge files.
    """
    data = path.read_bytes()
    if len(data) > max_bytes:
        data = data[:max_bytes]
    try:
        return data.decode("utf-8", errors="ignore")
    except Exception:
        return data.decode(errors="ignore")

def is_probably_text_file(path: Path) -> bool:
    ext = path.suffix.lower()
    if ext in BINARY_EXT_BLOCKLIST:
        return False
    if ext in TEXT_EXT_ALLOWLIST:
        return True
    # heuristic: small files might be text
    try:
        return path.stat().st_size < 256_000
    except Exception:
        return False

def iter_files(root: Path) -> Iterator[Path]:
    for p in root.rglob("*"):
        if p.is_file():
            yield p

def mask_secret(value: str, keep_start: int = 4, keep_end: int = 4) -> str:
    if value is None:
        return ""
    s = str(value)
    s = s.strip()
    if len(s) <= keep_start + keep_end:
        return "*" * len(s)
    return s[:keep_start] + "****" + s[-keep_end:]

def sanitize_parent_scan_id(raw: Optional[str]) -> Optional[int]:
    """
    Swagger sometimes sends "" when checkbox 'Send empty value' is enabled.
    Accept: None, "", "null", "None" -> None
    Else parse int.
    """
    if raw is None:
        return None
    raw = str(raw).strip()
    if raw == "" or raw.lower() in {"none", "null"}:
        return None
    return int(raw)

class Timer:
    def __init__(self) -> None:
        self.t0 = time.time()

    def ms(self) -> int:
        return int((time.time() - self.t0) * 1000)

SAFE_PATH_RE = re.compile(r"^[a-zA-Z0-9_\-./\\]+$")

def ensure_dir(path: Path) -> None:
    path.mkdir(parents=True, exist_ok=True)
