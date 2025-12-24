from pathlib import Path
from typing import Optional

from fastapi import FastAPI, File, Form, UploadFile
from fastapi.responses import JSONResponse

from .db import init_db, save_scan, get_scan, list_scans, UPLOADS_DIR
from .scanner import scan_crypto

app = FastAPI(title="CryptoCheck", version="1.0")

@app.on_event("startup")
def _startup():
    init_db()

@app.post("/scan-crypto")
async def scan_crypto_endpoint(
    file: UploadFile = File(...),
    parent_scan_id: Optional[int] = Form(default=None),
): #enable_apktool: bool = Form(default=True)
    apk_path = Path(UPLOADS_DIR) / file.filename
    content = await file.read()
    apk_path.write_bytes(content)

    payload = scan_crypto(
        apk_path=apk_path,
        parent_scan_id=parent_scan_id,
        enable_apktool=True,
    )
    scan_id = save_scan(payload)
    payload["scan_id"] = scan_id
    return JSONResponse(payload)

@app.get("/scans/{scan_id}")
def get_scan_endpoint(scan_id: int):
    data = get_scan(scan_id)
    if not data:
        return JSONResponse({"error": "not found"}, status_code=404)
    return data

@app.get("/scans")
def list_scans_endpoint(limit: int = 20):
    return {"items": list_scans(limit=limit)}
