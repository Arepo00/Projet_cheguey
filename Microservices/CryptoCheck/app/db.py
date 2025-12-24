import json
import sqlite3
from pathlib import Path
from typing import Any, Dict, List, Optional

DATA_DIR = Path("data")
DATA_DIR.mkdir(exist_ok=True)

DB_PATH = Path((__import__("os").environ.get("SQLITE_PATH")) or (DATA_DIR / "cryptocheck.db"))
WORK_DIR = DATA_DIR / "work"
UPLOADS_DIR = DATA_DIR / "uploads"
WORK_DIR.mkdir(exist_ok=True, parents=True)
UPLOADS_DIR.mkdir(exist_ok=True, parents=True)

def init_db() -> None:
    conn = sqlite3.connect(DB_PATH)
    try:
        cur = conn.cursor()
        cur.execute(
            """
            CREATE TABLE IF NOT EXISTS crypto_scans (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                parent_scan_id INTEGER,
                service TEXT NOT NULL,
                file_name TEXT NOT NULL,
                sha256 TEXT NOT NULL,
                package_name TEXT,
                findings_json TEXT NOT NULL,
                created_at DATETIME DEFAULT CURRENT_TIMESTAMP
            )
            """
        )
        conn.commit()
    finally:
        conn.close()

def save_scan(payload: Dict[str, Any]) -> int:
    conn = sqlite3.connect(DB_PATH)
    try:
        cur = conn.cursor()
        cur.execute(
            """
            INSERT INTO crypto_scans(parent_scan_id, service, file_name, sha256, package_name, findings_json)
            VALUES (?, ?, ?, ?, ?, ?)
            """,
            (
                payload.get("parent_scan_id"),
                payload.get("service"),
                payload.get("meta", {}).get("context", {}).get("file_name"),
                payload.get("meta", {}).get("context", {}).get("sha256"),
                payload.get("package"),
                json.dumps(payload),
            ),
        )
        conn.commit()
        return cur.lastrowid
    finally:
        conn.close()

def get_scan(scan_id: int) -> Optional[Dict[str, Any]]:
    conn = sqlite3.connect(DB_PATH)
    try:
        cur = conn.cursor()
        cur.execute("SELECT findings_json FROM crypto_scans WHERE id = ?", (scan_id,))
        row = cur.fetchone()
        if not row:
            return None
        return json.loads(row[0])
    finally:
        conn.close()

def list_scans(limit: int = 20) -> List[Dict[str, Any]]:
    conn = sqlite3.connect(DB_PATH)
    try:
        cur = conn.cursor()
        cur.execute(
            "SELECT findings_json FROM crypto_scans ORDER BY id DESC LIMIT ?",
            (limit,),
        )
        return [json.loads(r[0]) for r in cur.fetchall()]
    finally:
        conn.close()
