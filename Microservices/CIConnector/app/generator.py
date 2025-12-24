from __future__ import annotations

from typing import Any, Dict, Tuple
from string import Template
import re
import yaml


_UNRESOLVED_VAR_RE = re.compile(r"\$\{(?!\{)([A-Za-z_][A-Za-z0-9_]*)\}")  # ignores ${{ github.expr }}


def _subst(obj: Any, vars: Dict[str, str]) -> Any:
    """Recursively substitute ${VAR} in strings."""
    if isinstance(obj, str):
        return Template(obj).safe_substitute(vars)
    if isinstance(obj, list):
        return [_subst(x, vars) for x in obj]
    if isinstance(obj, dict):
        return {k: _subst(v, vars) for k, v in obj.items()}
    return obj


def _dump_yaml(doc: Dict[str, Any]) -> str:
    # YAML 1.2 => "on" is not treated as boolean by YAML 1.2 parsers
    return yaml.safe_dump(
        doc,
        sort_keys=False,
        allow_unicode=True,
        default_flow_style=False,
        width=1000,
        explicit_start=True,
        version=(1, 2),
    )


def _assert_no_unresolved_vars(yaml_text: str) -> None:
    missing = sorted(set(_UNRESOLVED_VAR_RE.findall(yaml_text)))
    if missing:
        raise ValueError(
            "Unresolved variables in generated YAML: "
            + ", ".join(missing)
            + ". Provide them via request.variables or override_scan_script."
        )


def generate(
    ci: str,
    plugin_doc: Dict[str, Any],
    vars: Dict[str, str],
    override_scan_script: str | None,
) -> Tuple[str, str]:
    """
    Returns (filename_hint, yaml_text)
    """

    # Ensure SCAN_SCRIPT is always present to avoid unresolved placeholders.
    if override_scan_script:
        vars = {**vars, "SCAN_SCRIPT": override_scan_script}
    else:
        vars = {**vars, "SCAN_SCRIPT": vars.get("SCAN_SCRIPT", 'echo "No SCAN_SCRIPT provided"; exit 1')}

    if ci == "github_actions":
        base = plugin_doc.get("github_actions") or {}
        if not base:
            raise ValueError("Plugin has no github_actions section.")
        doc = _subst(base, vars)
        yml = _dump_yaml(doc)
        _assert_no_unresolved_vars(yml)
        return ".github/workflows/mobilesec-scan.yml", yml

    if ci == "gitlab_ci":
        base = plugin_doc.get("gitlab_ci") or {}
        if not base:
            raise ValueError("Plugin has no gitlab_ci section.")
        doc = _subst(base, vars)
        yml = _dump_yaml(doc)
        _assert_no_unresolved_vars(yml)
        return ".gitlab-ci.yml", yml

    raise ValueError(f"Unknown ci type: {ci}")
