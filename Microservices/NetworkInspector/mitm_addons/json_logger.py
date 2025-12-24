import json
import time
import os
import hashlib

FLOWS_FILE = os.getenv("FLOWS_FILE", "/app/data/flows.jsonl")

def _h(s: str) -> str:
    return hashlib.sha256(s.encode("utf-8", errors="ignore")).hexdigest()[:16]

def _preview(b: bytes, limit: int = 400) -> str:
    if not b:
        return ""
    try:
        s = b.decode("utf-8", errors="ignore")
    except Exception:
        return ""
    return s[:limit] + ("..." if len(s) > limit else "")

def response(flow):
    try:
        req = flow.request
        resp = flow.response

        scheme = "https" if req.scheme == "https" else "http"

        # TLS info (si présent)
        tls_version = None
        cipher = None
        try:
            sc = flow.server_conn
            # selon versions mitmproxy, ces champs peuvent varier
            tls_version = getattr(sc, "tls_version", None)
            cipher = getattr(sc, "cipher", None)
            if isinstance(cipher, tuple):
                cipher = " ".join([str(x) for x in cipher])
        except Exception:
            pass

        entry = {
            "timestamp": time.time(),
            "flow_id": _h(f"{req.method} {req.pretty_url} {time.time_ns()}"),
            "request": {
                "method": req.method,
                "scheme": scheme,
                "host": req.host,
                "path": req.path,
                "url": req.pretty_url,
                "query": req.query or "",
                "headers": dict(req.headers),
                "content_type": req.headers.get("content-type"),
                "body_preview": _preview(req.raw_content or b"")
            },
            "response": {
                "status_code": resp.status_code,
                "headers": dict(resp.headers),
                "content_type": resp.headers.get("content-type"),
                "body_preview": _preview(resp.raw_content or b"")
            },
            "connection": {
                "tls_version": tls_version,
                "cipher": cipher
            }
        }

        os.makedirs(os.path.dirname(FLOWS_FILE), exist_ok=True)
        with open(FLOWS_FILE, "a", encoding="utf-8") as f:
            f.write(json.dumps(entry, ensure_ascii=False) + "\n")

    except Exception:
        # on évite de crasher mitmproxy
        return
