# app/storage_sqlite.py
import json
import sqlite3
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional


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
              status TEXT NOT NULL,
              error TEXT
            );
            """
        )
        con.execute(
            """
            CREATE TABLE IF NOT EXISTS findings (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              scan_id INTEGER NOT NULL,
              finding_id TEXT NOT NULL,
              title TEXT NOT NULL,
              severity TEXT NOT NULL,
              source TEXT NOT NULL,
              rule_id TEXT,
              file_path TEXT,
              line INTEGER,
              evidence_json TEXT NOT NULL,
              recommendation TEXT NOT NULL,
              FOREIGN KEY(scan_id) REFERENCES scans(id) ON DELETE CASCADE
            );
            """
        )
        con.execute("CREATE INDEX IF NOT EXISTS idx_findings_scan ON findings(scan_id);")
        con.execute("CREATE INDEX IF NOT EXISTS idx_scans_parent ON scans(parent_scan_id);")


def insert_scan(
    db_path: Path,
    *,
    parent_scan_id: Optional[int],
    file_name: str,
    sha256: Optional[str],
    status: str,
    error: Optional[str],
) -> int:
    created_at = datetime.now(timezone.utc).isoformat()
    with sqlite3.connect(db_path) as con:
        cur = con.cursor()
        cur.execute(
            """
            INSERT INTO scans (parent_scan_id, created_at, file_name, sha256, status, error)
            VALUES (?,?,?,?,?,?)
            """,
            (parent_scan_id, created_at, file_name, sha256, status, error),
        )
        return int(cur.lastrowid)


def insert_findings(db_path: Path, scan_id: int, findings_list: List[Dict[str, Any]]) -> None:
    with sqlite3.connect(db_path) as con:
        cur = con.cursor()
        for f in findings_list:
            evidence_json = json.dumps(f.get("evidence", {}), ensure_ascii=False)
            cur.execute(
                """
                INSERT INTO findings
                (scan_id, finding_id, title, severity, source, rule_id, file_path, line, evidence_json, recommendation)
                VALUES (?,?,?,?,?,?,?,?,?,?)
                """,
                (
                    scan_id,
                    f.get("id"),
                    f.get("title"),
                    f.get("severity"),
                    f.get("source", "SecretHunter"),
                    f.get("rule_id"),
                    f.get("file"),
                    f.get("line"),
                    evidence_json,
                    f.get("recommendation"),
                ),
            )


def get_scan(db_path: Path, scan_id: int) -> Optional[Dict[str, Any]]:
    with sqlite3.connect(db_path) as con:
        con.row_factory = sqlite3.Row
        scan = con.execute("SELECT * FROM scans WHERE id=?", (scan_id,)).fetchone()
        if not scan:
            return None
        rows = con.execute("SELECT * FROM findings WHERE scan_id=? ORDER BY id ASC", (scan_id,)).fetchall()

        findings_list = []
        for r in rows:
            d = dict(r)
            try:
                d["evidence"] = json.loads(d.pop("evidence_json") or "{}")
            except Exception:
                d["evidence"] = {}
            d["id"] = d.pop("finding_id")
            d["file"] = d.pop("file_path")
            findings_list.append(d)

        return {"scan": dict(scan), "findings_list": findings_list}


def list_scans(db_path: Path, limit: int = 20) -> List[Dict[str, Any]]:
    limit = max(1, min(int(limit), 200))
    with sqlite3.connect(db_path) as con:
        con.row_factory = sqlite3.Row
        rows = con.execute(
            "SELECT id, parent_scan_id, created_at, file_name, sha256, status FROM scans ORDER BY id DESC LIMIT ?",
            (limit,),
        ).fetchall()
        return [dict(r) for r in rows]
