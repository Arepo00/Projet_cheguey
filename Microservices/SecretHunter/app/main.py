# app/main.py
import os
import shutil
from pathlib import Path
from typing import Optional

from fastapi import FastAPI, File, Form, UploadFile
from fastapi.responses import JSONResponse

from .db import init_db, save_scan, get_scan, list_scans, UPLOADS_DIR
from .scanner import scan_secrets
from .utils import ensure_dir, sanitize_parent_scan_id

app = FastAPI(title="SecretHunter", version="1.0")

@app.on_event("startup")
def on_startup() -> None:
    init_db()
    ensure_dir(UPLOADS_DIR)

@app.get("/health")
def health():
    return {"status": "ok", "service": "SecretHunter"}

@app.post("/scan-secrets")
async def scan_secrets_endpoint(
    file: UploadFile = File(...),
    parent_scan_id: Optional[str] = Form(None),  # IMPORTANT: avoid 422 on ""
):
    try:
        parent_id = sanitize_parent_scan_id(parent_scan_id)
    except Exception:
        return JSONResponse(
            status_code=422,
            content={"detail": "parent_scan_id must be an integer or null"},
        )

    # Save upload to disk
    tmp_path = UPLOADS_DIR / file.filename
    with tmp_path.open("wb") as f:
        shutil.copyfileobj(file.file, f)

    # Flags via env (docker-friendly)
    enable_regex = os.getenv("SH_ENABLE_REGEX", "1") == "1"
    enable_yara = os.getenv("SH_ENABLE_YARA", "0") == "1"
    enable_gitleaks = os.getenv("SH_ENABLE_GITLEAKS", "0") == "1"
    gitleaks_bin = os.getenv("SH_GITLEAKS_BIN")  # optional

    payload = scan_secrets(
        apk_path=tmp_path,
        parent_scan_id=parent_id,
        enable_regex=enable_regex,
        enable_yara=enable_yara,
        enable_gitleaks=enable_gitleaks,
        gitleaks_bin=gitleaks_bin,
    )

    scan_id = save_scan(payload)
    payload["scan_id"] = scan_id

    return payload

@app.get("/scans/{scan_id}")
def get_scan_endpoint(scan_id: int):
    data = get_scan(scan_id)
    if not data:
        return JSONResponse(status_code=404, content={"detail": "scan not found"})
    return data

@app.get("/scans")
def list_scans_endpoint(limit: int = 20):
    return list_scans(limit=limit)
