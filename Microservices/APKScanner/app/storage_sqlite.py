# app/storage_sqlite.py
import json
import sqlite3
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional


def _ensure_column(con: sqlite3.Connection, table: str, col: str, ddl: str) -> None:
    cols = {r[1] for r in con.execute(f"PRAGMA table_info({table})").fetchall()}
    if col not in cols:
        con.execute(ddl)


def init_db(db_path: Path) -> None:
    db_path.parent.mkdir(parents=True, exist_ok=True)
    with sqlite3.connect(db_path) as con:
        con.execute("PRAGMA journal_mode=WAL;")
        con.execute("PRAGMA foreign_keys=ON;")

        con.execute(
            """
            CREATE TABLE IF NOT EXISTS scans (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              parent_scan_id INTEGER,
              created_at TEXT NOT NULL,
              file_name TEXT NOT NULL,
              sha256 TEXT,
              package_name TEXT,
              version_name TEXT,
              version_code TEXT,
              status TEXT NOT NULL,
              error TEXT,
              duration_ms INTEGER,
              engines_json TEXT,
              context_json TEXT,
              findings_json TEXT NOT NULL
            );
            """
        )

        # migrations safe (si DB existante)
        _ensure_column(con, "scans", "parent_scan_id", "ALTER TABLE scans ADD COLUMN parent_scan_id INTEGER")
        _ensure_column(con, "scans", "created_at", "ALTER TABLE scans ADD COLUMN created_at TEXT")
        _ensure_column(con, "scans", "sha256", "ALTER TABLE scans ADD COLUMN sha256 TEXT")
        _ensure_column(con, "scans", "package_name", "ALTER TABLE scans ADD COLUMN package_name TEXT")
        _ensure_column(con, "scans", "version_name", "ALTER TABLE scans ADD COLUMN version_name TEXT")
        _ensure_column(con, "scans", "version_code", "ALTER TABLE scans ADD COLUMN version_code TEXT")
        _ensure_column(con, "scans", "status", "ALTER TABLE scans ADD COLUMN status TEXT")
        _ensure_column(con, "scans", "error", "ALTER TABLE scans ADD COLUMN error TEXT")
        _ensure_column(con, "scans", "duration_ms", "ALTER TABLE scans ADD COLUMN duration_ms INTEGER")
        _ensure_column(con, "scans", "engines_json", "ALTER TABLE scans ADD COLUMN engines_json TEXT")
        _ensure_column(con, "scans", "context_json", "ALTER TABLE scans ADD COLUMN context_json TEXT")

        con.execute("CREATE INDEX IF NOT EXISTS idx_scans_parent ON scans(parent_scan_id);")
        con.execute("CREATE INDEX IF NOT EXISTS idx_scans_sha ON scans(sha256);")


def insert_scan(
    db_path: Path,
    *,
    file_name: str,
    sha256: Optional[str],
    findings: Dict[str, Any],
    status: str,
    error: Optional[str],
    duration_ms: Optional[int],
    engines: List[str],
    context: Dict[str, Any],
    parent_scan_id: Optional[int] = None,
) -> int:
    created_at = datetime.now(timezone.utc).isoformat()
    with sqlite3.connect(db_path) as con:
        cur = con.cursor()
        cur.execute(
            """
            INSERT INTO scans
            (parent_scan_id, created_at, file_name, sha256, package_name, version_name, version_code,
             status, error, duration_ms, engines_json, context_json, findings_json)
            VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
            """,
            (
                parent_scan_id,
                created_at,
                file_name,
                sha256,
                findings.get("package_name"),
                findings.get("version_name"),
                str(findings.get("version_code")) if findings.get("version_code") is not None else None,
                status,
                error,
                duration_ms,
                json.dumps(engines, ensure_ascii=False),
                json.dumps(context, ensure_ascii=False),
                json.dumps(findings, ensure_ascii=False),
            ),
        )
        return int(cur.lastrowid)


def get_scan(db_path: Path, scan_id: int) -> Optional[Dict[str, Any]]:
    with sqlite3.connect(db_path) as con:
        con.row_factory = sqlite3.Row
        row = con.execute("SELECT * FROM scans WHERE id=?", (scan_id,)).fetchone()
        if not row:
            return None
        d = dict(row)
        d["findings"] = json.loads(d.get("findings_json") or "{}")
        d["engines"] = json.loads(d.get("engines_json") or "[]")
        d["context"] = json.loads(d.get("context_json") or "{}")
        return d


def list_scans(db_path: Path, limit: int = 20) -> List[Dict[str, Any]]:
    limit = max(1, min(int(limit), 200))
    with sqlite3.connect(db_path) as con:
        con.row_factory = sqlite3.Row
        rows = con.execute(
            "SELECT id, parent_scan_id, created_at, file_name, sha256, package_name, status, duration_ms "
            "FROM scans ORDER BY id DESC LIMIT ?",
            (limit,),
        ).fetchall()
        return [dict(r) for r in rows]
