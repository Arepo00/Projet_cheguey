import hashlib
import time
from pathlib import Path

def ensure_dir(p: Path) -> None:
    p.mkdir(parents=True, exist_ok=True)

def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()

class Timer:
    def __init__(self) -> None:
        self.t0 = time.time()
    def ms(self) -> int:
        return int((time.time() - self.t0) * 1000)
