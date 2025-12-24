# app/main.py
import hashlib
import os
import time
from pathlib import Path
from typing import Optional, List, Dict, Any

from fastapi import FastAPI, UploadFile, File, Form, HTTPException
from fastapi.responses import JSONResponse

from .analyzer import analyze_apk
from .db import init_db, save_scan, get_scan, list_scans

app = FastAPI(title="APKScanner", version="1.0")

SERVICE_NAME = "APKScanner"

DATA_DIR = Path(os.environ.get("DATA_DIR", "data"))
UPLOAD_DIR = DATA_DIR / "uploads"


@app.on_event("startup")
def _startup():
    UPLOAD_DIR.mkdir(parents=True, exist_ok=True)
    init_db()  # uses SQLITE_PATH env var by default from db.py


@app.get("/health")
def health():
    return {"status": "ok"}


def _unified_response(
    scan_id: int,
    *,
    package: Optional[str],
    findings_list: List[Dict[str, Any]],
    duration_ms: int,
    status: str = "COMPLETED",
    error: Optional[str] = None,
    engines: Optional[List[str]] = None,
    context: Optional[Dict[str, Any]] = None,
):
    return {
        "scan_id": scan_id,
        "service": SERVICE_NAME,
        "package": package,
        "findings_list": findings_list,
        "meta": {
            "status": status,
            "error": error,
            "duration_ms": duration_ms,
            "engine": engines or [],
            "context": context or {},
        },
    }


@app.post("/scan-apk")
async def scan_apk(
    file: UploadFile = File(...),
    parent_scan_id: Optional[int] = Form(default=None),
):
    if not file.filename.lower().endswith(".apk"):
        raise HTTPException(status_code=400, detail="Fichier invalide: .apk requis")

    content = await file.read()
    if not content:
        raise HTTPException(status_code=400, detail="Fichier vide")

    sha256 = hashlib.sha256(content).hexdigest()
    out_path = UPLOAD_DIR / f"{sha256}_{file.filename}"
    out_path.write_bytes(content)

    t0 = time.perf_counter()

    try:
        findings = analyze_apk(out_path)
        duration_ms = int((time.perf_counter() - t0) * 1000)

        engines: List[str] = ["androguard"]
        if findings.get("apktool_used"):
            engines.append("apktool")

        context = {
            "file_name": findings.get("file_name"),
            "sha256": sha256,
            "version_name": findings.get("version_name"),
            "version_code": findings.get("version_code"),
            "debuggable": findings.get("debuggable"),
            "allow_backup": findings.get("allow_backup"),
            "cleartext_traffic_permitted": findings.get("cleartext_traffic_permitted"),
            "dangerous_permissions": findings.get("dangerous_permissions", []),
            "exported_components": findings.get("exported_components", []),
            "endpoints": findings.get("endpoints", []),
        }

        scan_id = save_scan(
            findings,
            status="COMPLETED",
            error=None,
            duration_ms=duration_ms,
            engines=engines,
            context=context,
            parent_scan_id=parent_scan_id,
            sha256=sha256,
        )

        return _unified_response(
            scan_id,
            package=findings.get("package_name"),
            findings_list=findings.get("findings_list", []),
            duration_ms=duration_ms,
            status="COMPLETED",
            engines=engines,
            context=context,
        )

    except Exception as e:
        duration_ms = int((time.perf_counter() - t0) * 1000)

        failed_findings = {
            "file_name": out_path.name,
            "package_name": None,
            "version_name": None,
            "version_code": None,
            "permissions": [],
            "dangerous_permissions": [],
            "debuggable": False,
            "allow_backup": False,
            "cleartext_traffic_permitted": False,
            "exported_components": [],
            "endpoints": [],
            "findings_list": [],
            "apktool_used": False,
        }

        scan_id = save_scan(
            failed_findings,
            status="FAILED",
            error=str(e),
            duration_ms=duration_ms,
            engines=[],
            context={"file_name": failed_findings["file_name"], "sha256": sha256},
            parent_scan_id=parent_scan_id,
            sha256=sha256,
        )

        return JSONResponse(
            status_code=500,
            content=_unified_response(
                scan_id,
                package=None,
                findings_list=[],
                duration_ms=duration_ms,
                status="FAILED",
                error=str(e),
                engines=[],
                context={"file_name": failed_findings["file_name"], "sha256": sha256},
            ),
        )


@app.get("/scan/{scan_id}")
def read_scan(scan_id: int):
    row = get_scan(scan_id)
    if not row:
        raise HTTPException(status_code=404, detail="Scan introuvable")

    findings_list = row.get("findings_list_json", []) or []
    engines = row.get("engines_json", []) or []
    context = row.get("context_json", {}) or {}

    return _unified_response(
        scan_id=row["id"],
        package=row.get("package_name"),
        findings_list=findings_list,
        duration_ms=row.get("duration_ms") if row.get("duration_ms") is not None else -1,
        status=row.get("status", "COMPLETED"),
        error=row.get("error"),
        engines=engines,
        context=context,
    )


@app.get("/scans")
def scans(limit: int = 20):
    return {"items": list_scans(limit=limit)}
