import os
import subprocess
from pathlib import Path
from typing import Optional, Tuple

def apktool_decode(apk_path: Path, out_dir: Path, apktool_bin: Optional[str] = None) -> Tuple[bool, Optional[str]]:
    apktool = apktool_bin or os.getenv("APKTOOL_BIN", "apktool")

    cmd = [apktool, "d", "-f", "-o", str(out_dir), str(apk_path)]
    try:
        subprocess.run(cmd, capture_output=True, text=True, check=True)
        return True, None

    except FileNotFoundError:
        return False, f"apktool not found. Install it or set APKTOOL_BIN. Tried: {apktool}"

    except subprocess.CalledProcessError as e:
        msg = (e.stderr or e.stdout or "").strip()
        if len(msg) > 2500:
            msg = msg[-2500:]
        return False, f"apktool failed (exit={e.returncode}): {msg}"
