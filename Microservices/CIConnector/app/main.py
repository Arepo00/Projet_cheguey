from __future__ import annotations

import os
import subprocess
from typing import Dict, Any

from fastapi import FastAPI, HTTPException
from fastapi.responses import Response

from .models import GenerateRequest, GenerateResponse
from .plugins import load_plugins
from .generator import generate
from .utils import Timer

PLUGINS_DIR = os.getenv("PLUGINS_DIR", "/app/config/plugins")
DEFAULT_PLUGIN = os.getenv("DEFAULT_PLUGIN", "default")

app = FastAPI(title="CIConnector", version="1.0")

_PLUGINS = {}


@app.on_event("startup")
def _startup() -> None:
    global _PLUGINS
    _PLUGINS = load_plugins(PLUGINS_DIR)


@app.get("/health")
def health() -> Dict[str, Any]:
    return {"ok": True, "service": "CIConnector", "plugins": sorted(list(_PLUGINS.keys()))}


@app.get("/plugins")
def list_plugins() -> Dict[str, Any]:
    return {"plugins": [{"name": p.name, "source_file": p.source_file} for p in _PLUGINS.values()]}


@app.get("/plugins/{name}")
def get_plugin(name: str) -> Dict[str, Any]:
    p = _PLUGINS.get(name)
    if not p:
        raise HTTPException(status_code=404, detail=f"Plugin not found: {name}")
    return {"name": p.name, "source_file": p.source_file, "data": p.data}


@app.get("/docker/ping")
def docker_ping() -> Dict[str, Any]:
    """
    Works only if /var/run/docker.sock is mounted and docker CLI exists.
    """
    try:
        r = subprocess.run(["docker", "version"], capture_output=True, text=True, timeout=5)
        ok = (r.returncode == 0)
        return {"docker_ok": ok, "stdout": r.stdout[-2000:], "stderr": r.stderr[-2000:]}
    except Exception as e:
        return {"docker_ok": False, "error": str(e)}


def _validate_ci(ci: str) -> None:
    if ci not in ("github_actions", "gitlab_ci"):
        raise HTTPException(status_code=400, detail=f"Unsupported ci: {ci}. Use github_actions or gitlab_ci.")


def _get_plugin_or_404(plugin_name: str):
    p = _PLUGINS.get(plugin_name)
    if not p:
        raise HTTPException(status_code=404, detail=f"Plugin not found: {plugin_name}")
    return p


@app.post("/generate", response_model=GenerateResponse)
def generate_ci(req: GenerateRequest) -> GenerateResponse:
    t = Timer()

    _validate_ci(req.ci)

    plugin_name = req.plugin or DEFAULT_PLUGIN
    p = _get_plugin_or_404(plugin_name)

    defaults = p.data.get("defaults", {}) or {}
    vars = {**defaults, **(req.variables or {})}

    try:
        filename, yml = generate(req.ci, p.data, vars, req.override_scan_script)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Unexpected error: {e}")

    return GenerateResponse(
        ci=req.ci,
        plugin=plugin_name,
        filename_hint=filename,
        yaml=yml,
        meta={"duration_ms": t.ms(), "vars_used": sorted(list(vars.keys()))},
    )


@app.post("/generate/file")
def generate_ci_file(req: GenerateRequest) -> Response:
    """
    Same as /generate but returns the YAML as a downloadable attachment.
    """
    _validate_ci(req.ci)

    plugin_name = req.plugin or DEFAULT_PLUGIN
    p = _get_plugin_or_404(plugin_name)

    defaults = p.data.get("defaults", {}) or {}
    vars = {**defaults, **(req.variables or {})}

    try:
        filename, yml = generate(req.ci, p.data, vars, req.override_scan_script)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Unexpected error: {e}")

    return Response(
        content=yml,
        media_type="application/x-yaml; charset=utf-8",
        headers={"Content-Disposition": f'attachment; filename="{os.path.basename(filename)}"'},
    )
