from fastapi import FastAPI
from .models import ScanRequest, ScanResponse
from .scanner import scan_network
from .db import init_db, save_scan, get_scan, list_scans

app = FastAPI(title="NetworkInspector", version="1.0")

@app.on_event("startup")
def _startup() -> None:
    init_db()

@app.get("/health")
def health():
    return {"ok": True, "service": "NetworkInspector"}

@app.post("/scan-network", response_model=ScanResponse)
def scan_network_endpoint(req: ScanRequest):
    payload = scan_network(
        parent_scan_id=req.parent_scan_id,
        package=req.package,
        max_flows=req.max_flows,
        since_seconds=req.since_seconds,
    )
    scan_id = save_scan(payload)
    payload["scan_id"] = scan_id
    return payload

@app.get("/scan/{scan_id}")
def get_scan_endpoint(scan_id: int):
    data = get_scan(scan_id)
    if not data:
        return {"error": "not found", "scan_id": scan_id}
    return data

@app.get("/scans")
def list_scans_endpoint(limit: int = 20):
    return list_scans(limit=limit)
