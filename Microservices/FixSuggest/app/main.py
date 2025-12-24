from fastapi import FastAPI
from .models import FixRequest, FixResponse
from .scanner import suggest_fixes
from .db import init_db, save_suggestion, get_suggestion, list_suggestions

app = FastAPI(title="FixSuggest", version="1.0")

@app.on_event("startup")
def _startup() -> None:
    init_db()

@app.get("/health")
def health():
    return {"ok": True, "service": "FixSuggest"}

@app.get("/rules")
def rules():
    # returns loaded YAML rule IDs + titles
    from .rules_loader import load_rules
    rules = load_rules()
    return [{"id": r["id"], "title": r.get("title"), "masvs": r.get("masvs"), "severity": r.get("severity")} for r in rules]

@app.post("/fix-suggest", response_model=FixResponse)
def fix_suggest_endpoint(req: FixRequest):
    payload = suggest_fixes(
        parent_scan_id=req.parent_scan_id,
        package=req.package,
        findings_list=req.findings_list or [],
        artifacts=req.artifacts or {},
        enable_patches=req.enable_patches,
        max_suggestions=req.max_suggestions,
    )
    sid = save_suggestion(payload)
    payload["suggestion_id"] = sid
    return payload

@app.get("/suggestion/{suggestion_id}")
def get_suggestion_endpoint(suggestion_id: int):
    data = get_suggestion(suggestion_id)
    if not data:
        return {"error": "not found", "suggestion_id": suggestion_id}
    return data

@app.get("/suggestions")
def list_suggestions_endpoint(limit: int = 20):
    return list_suggestions(limit=limit)
