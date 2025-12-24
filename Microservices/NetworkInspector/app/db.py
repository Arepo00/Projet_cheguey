import json
import sqlite3
from pathlib import Path
from typing import Any, Dict, List, Optional
import os

DATA_DIR = Path(os.getenv("DATA_DIR", "/app/data"))
SQLITE_PATH = Path(os.getenv("SQLITE_PATH", str(DATA_DIR / "networkinspector.db")))

def init_db() -> None:
    DATA_DIR.mkdir(parents=True, exist_ok=True)
    conn = sqlite3.connect(SQLITE_PATH)
    try:
        cur = conn.cursor()
        cur.execute(
            """
            CREATE TABLE IF NOT EXISTS network_scans (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                parent_scan_id INTEGER,
                package TEXT,
                created_at INTEGER NOT NULL,
                findings_json TEXT NOT NULL
            )
            """
        )
        conn.commit()
    finally:
        conn.close()

def save_scan(payload: Dict[str, Any]) -> int:
    conn = sqlite3.connect(SQLITE_PATH)
    try:
        cur = conn.cursor()
        cur.execute(
            """
            INSERT INTO network_scans (parent_scan_id, package, created_at, findings_json)
            VALUES (?, ?, ?, ?)
            """,
            (
                payload.get("parent_scan_id"),
                payload.get("package"),
                int(payload.get("meta", {}).get("created_at", 0)),
                json.dumps(payload),
            ),
        )
        conn.commit()
        return int(cur.lastrowid)
    finally:
        conn.close()

def get_scan(scan_id: int) -> Optional[Dict[str, Any]]:
    conn = sqlite3.connect(SQLITE_PATH)
    try:
        cur = conn.cursor()
        cur.execute("SELECT id, findings_json FROM network_scans WHERE id = ?", (scan_id,))
        row = cur.fetchone()
        if not row:
            return None
        _id, js = row
        data = json.loads(js)
        data["scan_id"] = _id
        return data
    finally:
        conn.close()

def list_scans(limit: int = 20) -> List[Dict[str, Any]]:
    conn = sqlite3.connect(SQLITE_PATH)
    try:
        cur = conn.cursor()
        cur.execute(
            "SELECT id, findings_json FROM network_scans ORDER BY id DESC LIMIT ?",
            (limit,),
        )
        rows = cur.fetchall()
        out: List[Dict[str, Any]] = []
        for _id, js in rows:
            data = json.loads(js)
            data["scan_id"] = _id
            out.append(data)
        return out
    finally:
        conn.close()
