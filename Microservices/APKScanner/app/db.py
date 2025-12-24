# app/db.py
import json
import os
import sqlite3
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional

DATA_DIR = Path(os.environ.get("DATA_DIR", "data"))
DATA_DIR.mkdir(parents=True, exist_ok=True)

DB_PATH = Path(os.environ.get("SQLITE_PATH", str(DATA_DIR / "apkscanner.db")))


def _ensure_column(conn: sqlite3.Connection, table: str, col: str, ddl: str) -> None:
    cols = {r[1] for r in conn.execute(f"PRAGMA table_info({table})").fetchall()}
    if col not in cols:
        conn.execute(ddl)


def init_db(db_path: Path = DB_PATH) -> None:
    db_path.parent.mkdir(parents=True, exist_ok=True)
    with sqlite3.connect(db_path) as conn:
        conn.execute("PRAGMA journal_mode=WAL;")
        conn.execute("PRAGMA foreign_keys=ON;")

        # Base table (wide schema)
        conn.execute(
            """
            CREATE TABLE IF NOT EXISTS apk_scans (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              created_at TEXT NOT NULL,
              parent_scan_id INTEGER,

              file_name TEXT NOT NULL,
              sha256 TEXT,
              package_name TEXT,
              version_name TEXT,
              version_code TEXT,

              debuggable INTEGER,
              allow_backup INTEGER,
              cleartext_traffic_permitted INTEGER,
              apktool_used INTEGER,

              permissions_json TEXT,
              dangerous_permissions_json TEXT,
              exported_components_json TEXT,
              endpoints_json TEXT,
              findings_list_json TEXT,

              status TEXT NOT NULL,
              error TEXT,
              duration_ms INTEGER,
              engines_json TEXT,
              context_json TEXT
            );
            """
        )

        # Safe migrations (if your DB existed before)
        _ensure_column(conn, "apk_scans", "created_at", "ALTER TABLE apk_scans ADD COLUMN created_at TEXT")
        _ensure_column(conn, "apk_scans", "parent_scan_id", "ALTER TABLE apk_scans ADD COLUMN parent_scan_id INTEGER")
        _ensure_column(conn, "apk_scans", "sha256", "ALTER TABLE apk_scans ADD COLUMN sha256 TEXT")
        _ensure_column(conn, "apk_scans", "package_name", "ALTER TABLE apk_scans ADD COLUMN package_name TEXT")
        _ensure_column(conn, "apk_scans", "version_name", "ALTER TABLE apk_scans ADD COLUMN version_name TEXT")
        _ensure_column(conn, "apk_scans", "version_code", "ALTER TABLE apk_scans ADD COLUMN version_code TEXT")

        _ensure_column(conn, "apk_scans", "debuggable", "ALTER TABLE apk_scans ADD COLUMN debuggable INTEGER")
        _ensure_column(conn, "apk_scans", "allow_backup", "ALTER TABLE apk_scans ADD COLUMN allow_backup INTEGER")
        _ensure_column(conn, "apk_scans", "cleartext_traffic_permitted", "ALTER TABLE apk_scans ADD COLUMN cleartext_traffic_permitted INTEGER")
        _ensure_column(conn, "apk_scans", "apktool_used", "ALTER TABLE apk_scans ADD COLUMN apktool_used INTEGER")

        _ensure_column(conn, "apk_scans", "permissions_json", "ALTER TABLE apk_scans ADD COLUMN permissions_json TEXT")
        _ensure_column(conn, "apk_scans", "dangerous_permissions_json", "ALTER TABLE apk_scans ADD COLUMN dangerous_permissions_json TEXT")
        _ensure_column(conn, "apk_scans", "exported_components_json", "ALTER TABLE apk_scans ADD COLUMN exported_components_json TEXT")
        _ensure_column(conn, "apk_scans", "endpoints_json", "ALTER TABLE apk_scans ADD COLUMN endpoints_json TEXT")
        _ensure_column(conn, "apk_scans", "findings_list_json", "ALTER TABLE apk_scans ADD COLUMN findings_list_json TEXT")

        _ensure_column(conn, "apk_scans", "status", "ALTER TABLE apk_scans ADD COLUMN status TEXT")
        _ensure_column(conn, "apk_scans", "error", "ALTER TABLE apk_scans ADD COLUMN error TEXT")
        _ensure_column(conn, "apk_scans", "duration_ms", "ALTER TABLE apk_scans ADD COLUMN duration_ms INTEGER")
        _ensure_column(conn, "apk_scans", "engines_json", "ALTER TABLE apk_scans ADD COLUMN engines_json TEXT")
        _ensure_column(conn, "apk_scans", "context_json", "ALTER TABLE apk_scans ADD COLUMN context_json TEXT")

        # Indexes
        conn.execute("CREATE INDEX IF NOT EXISTS idx_apk_scans_sha256 ON apk_scans(sha256);")
        conn.execute("CREATE INDEX IF NOT EXISTS idx_apk_scans_parent ON apk_scans(parent_scan_id);")
        conn.execute("CREATE INDEX IF NOT EXISTS idx_apk_scans_pkg ON apk_scans(package_name);")
        conn.execute("CREATE INDEX IF NOT EXISTS idx_apk_scans_status ON apk_scans(status);")
        conn.commit()


def save_scan(
    findings: Dict[str, Any],
    *,
    status: str = "COMPLETED",
    error: Optional[str] = None,
    duration_ms: Optional[int] = None,
    engines: Optional[List[str]] = None,
    context: Optional[Dict[str, Any]] = None,
    parent_scan_id: Optional[int] = None,
    sha256: Optional[str] = None,
    db_path: Path = DB_PATH,
) -> int:
    created_at = datetime.now(timezone.utc).isoformat()

    permissions = findings.get("permissions", []) or []
    dangerous = findings.get("dangerous_permissions", []) or []
    exported = findings.get("exported_components", []) or []
    endpoints = findings.get("endpoints", []) or []
    findings_list = findings.get("findings_list", []) or []

    def _b(v: Any) -> int:
        return 1 if bool(v) else 0

    with sqlite3.connect(db_path) as conn:
        cur = conn.cursor()
        cur.execute(
            """
            INSERT INTO apk_scans (
              created_at, parent_scan_id,
              file_name, sha256, package_name, version_name, version_code,
              debuggable, allow_backup, cleartext_traffic_permitted, apktool_used,
              permissions_json, dangerous_permissions_json, exported_components_json,
              endpoints_json, findings_list_json,
              status, error, duration_ms, engines_json, context_json
            )
            VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)
            """,
            (
                created_at,
                parent_scan_id,
                findings.get("file_name"),
                sha256,
                findings.get("package_name"),
                findings.get("version_name"),
                str(findings.get("version_code")) if findings.get("version_code") is not None else None,
                _b(findings.get("debuggable")),
                _b(findings.get("allow_backup")),
                _b(findings.get("cleartext_traffic_permitted")),
                _b(findings.get("apktool_used")),
                json.dumps(permissions, ensure_ascii=False),
                json.dumps(dangerous, ensure_ascii=False),
                json.dumps(exported, ensure_ascii=False),
                json.dumps(endpoints, ensure_ascii=False),
                json.dumps(findings_list, ensure_ascii=False),
                status,
                error,
                duration_ms,
                json.dumps(engines or [], ensure_ascii=False),
                json.dumps(context or {}, ensure_ascii=False),
            ),
        )
        conn.commit()
        return int(cur.lastrowid)


def get_scan(scan_id: int, db_path: Path = DB_PATH) -> Optional[Dict[str, Any]]:
    with sqlite3.connect(db_path) as conn:
        conn.row_factory = sqlite3.Row
        row = conn.execute("SELECT * FROM apk_scans WHERE id = ?", (scan_id,)).fetchone()
        if not row:
            return None
        d = dict(row)

        # Parse json columns safely
        for k in [
            "permissions_json",
            "dangerous_permissions_json",
            "exported_components_json",
            "endpoints_json",
            "findings_list_json",
            "engines_json",
            "context_json",
        ]:
            try:
                d[k] = json.loads(d[k]) if d.get(k) else ([] if k.endswith("_json") and k != "context_json" else {})
            except Exception:
                d[k] = [] if k != "context_json" else {}

        return d


def list_scans(limit: int = 20, db_path: Path = DB_PATH) -> List[Dict[str, Any]]:
    limit = max(1, min(int(limit), 200))
    with sqlite3.connect(db_path) as conn:
        conn.row_factory = sqlite3.Row
        rows = conn.execute(
            """
            SELECT id, created_at, file_name, sha256, package_name, version_name, version_code,
                   status, duration_ms
            FROM apk_scans
            ORDER BY id DESC
            LIMIT ?
            """,
            (limit,),
        ).fetchall()
        return [dict(r) for r in rows]
