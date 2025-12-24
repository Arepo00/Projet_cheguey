import os, json, sqlite3
from typing import Any, Dict, List, Optional

SQLITE_PATH = os.getenv("SQLITE_PATH", "/app/data/fixsuggest.db")

def init_db() -> None:
    os.makedirs(os.path.dirname(SQLITE_PATH), exist_ok=True)
    con = sqlite3.connect(SQLITE_PATH)
    cur = con.cursor()
    cur.execute("""
    CREATE TABLE IF NOT EXISTS suggestions (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      created_at INTEGER NOT NULL,
      payload TEXT NOT NULL
    )
    """)
    con.commit()
    con.close()

def save_suggestion(payload: Dict[str, Any]) -> int:
    con = sqlite3.connect(SQLITE_PATH)
    cur = con.cursor()
    cur.execute("INSERT INTO suggestions(created_at, payload) VALUES(?,?)",
                (int(__import__("time").time()), json.dumps(payload)))
    con.commit()
    sid = int(cur.lastrowid)
    con.close()
    return sid

def get_suggestion(suggestion_id: int) -> Optional[Dict[str, Any]]:
    con = sqlite3.connect(SQLITE_PATH)
    cur = con.cursor()
    cur.execute("SELECT payload FROM suggestions WHERE id=?", (suggestion_id,))
    row = cur.fetchone()
    con.close()
    if not row:
        return None
    return json.loads(row[0])

def list_suggestions(limit: int = 20) -> List[Dict[str, Any]]:
    con = sqlite3.connect(SQLITE_PATH)
    cur = con.cursor()
    cur.execute("SELECT id, created_at, payload FROM suggestions ORDER BY id DESC LIMIT ?", (limit,))
    rows = cur.fetchall()
    con.close()
    out = []
    for sid, created_at, payload in rows:
        obj = json.loads(payload)
        obj["suggestion_id"] = sid
        obj.setdefault("meta", {})
        obj["meta"]["created_at"] = created_at
        out.append(obj)
    return out
