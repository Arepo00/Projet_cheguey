# app/db.py
import json
import sqlite3
from pathlib import Path
from typing import Any, Dict, List, Optional

from .utils import ensure_dir, utc_now_iso

DATA_DIR = Path("data")
UPLOADS_DIR = DATA_DIR / "uploads"
WORK_DIR = DATA_DIR / "work"
ensure_dir(DATA_DIR)
ensure_dir(UPLOADS_DIR)
ensure_dir(WORK_DIR)

DB_PATH = DATA_DIR / "secrethunter.db"

def get_conn() -> sqlite3.Connection:
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    return conn

def init_db() -> None:
    conn = get_conn()
    try:
        cur = conn.cursor()
        cur.execute(
            """
            CREATE TABLE IF NOT EXISTS sh_scans (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                created_at TEXT NOT NULL,
                parent_scan_id INTEGER,
                file_name TEXT NOT NULL,
                sha256 TEXT NOT NULL,
                package_name TEXT,
                status TEXT NOT NULL,
                duration_ms INTEGER,
                engines_json TEXT,
                error TEXT,
                payload_json TEXT NOT NULL
            )
            """
        )
        conn.commit()
    finally:
        conn.close()

def save_scan(payload: Dict[str, Any]) -> int:
    """
    Stores the whole unified payload + indexed columns.
    """
    meta = payload.get("meta", {}) or {}
    context = meta.get("context", {}) or {}

    conn = get_conn()
    try:
        cur = conn.cursor()
        cur.execute(
            """
            INSERT INTO sh_scans
              (created_at, parent_scan_id, file_name, sha256, package_name, status, duration_ms, engines_json, error, payload_json)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            """,
            (
                utc_now_iso(),
                payload.get("parent_scan_id"),
                context.get("file_name") or payload.get("file_name") or "",
                context.get("sha256") or payload.get("sha256") or "",
                payload.get("package"),
                meta.get("status", "UNKNOWN"),
                meta.get("duration_ms"),
                json.dumps(meta.get("engine", [])),
                meta.get("error"),
                json.dumps(payload),
            ),
        )
        conn.commit()
        return int(cur.lastrowid)
    finally:
        conn.close()

def get_scan(scan_id: int) -> Optional[Dict[str, Any]]:
    conn = get_conn()
    try:
        cur = conn.cursor()
        cur.execute("SELECT payload_json FROM sh_scans WHERE id = ?", (scan_id,))
        row = cur.fetchone()
        if not row:
            return None
        return json.loads(row["payload_json"])
    finally:
        conn.close()

def list_scans(limit: int = 20) -> List[Dict[str, Any]]:
    conn = get_conn()
    try:
        cur = conn.cursor()
        cur.execute("SELECT id, payload_json FROM sh_scans ORDER BY id DESC LIMIT ?", (limit,))
        rows = cur.fetchall()
        return [json.loads(r["payload_json"]) for r in rows]
    finally:
        conn.close()
