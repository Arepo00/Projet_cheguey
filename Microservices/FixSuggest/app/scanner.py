from typing import Any, Dict, List
from pydantic import BaseModel

from .utils import Timer
from .rules_loader import load_rules
from .patchers.diff_utils import unified_diff
from .patchers.manifest import set_exported_false
from .patchers.gradle import enable_r8_proguard_groovy

SERVICE_NAME = "FixSuggest"


def _to_dict(x: Any) -> Dict[str, Any]:
    # Pydantic v2
    if isinstance(x, BaseModel) and hasattr(x, "model_dump"):
        return x.model_dump()
    # Pydantic v1 (au cas où)
    if isinstance(x, BaseModel) and hasattr(x, "dict"):
        return x.dict()  # type: ignore[attr-defined]
    if isinstance(x, dict):
        return x
    return {}


def _normalize_findings(findings_list: List[Any]) -> List[Dict[str, Any]]:
    return [_to_dict(f) for f in findings_list]


def _finding_ids(normalized_findings: List[Dict[str, Any]]) -> List[str]:
    ids: List[str] = []
    for f in normalized_findings:
        fid = f.get("id")
        if isinstance(fid, str):
            ids.append(fid)
    return ids


def suggest_fixes(
    parent_scan_id: int,
    package: str,
    findings_list: List[Any],  # peut être List[Finding] (Pydantic) ou List[dict]
    artifacts: Dict[str, str],
    enable_patches: bool,
    max_suggestions: int,
) -> Dict[str, Any]:
    t = Timer()

    rules = load_rules()

    # ✅ normalisation une seule fois
    normalized_findings = _normalize_findings(findings_list)

    fids = set(_finding_ids(normalized_findings))
    suggestions: List[Dict[str, Any]] = []

    manifest_text = artifacts.get("AndroidManifest.xml")
    gradle_text = artifacts.get("build.gradle")

    # blob construit une fois (utile pour keywords)
    blob = " ".join(
        [((f.get("title") or "") + " " + (f.get("recommendation") or "")) for f in normalized_findings]
    ).lower()

    for r in rules:
        if len(suggestions) >= max_suggestions:
            break

        match = r.get("match", {})
        match_ids = set(match.get("finding_ids", []) or [])
        keywords = [k.lower() for k in (match.get("keywords", []) or [])]

        matched = False
        if match_ids and (fids & match_ids):
            matched = True
        elif keywords:
            matched = any(k in blob for k in keywords)

        if not matched:
            continue

        suggestion = {
            "rule_id": r["id"],
            "masvs": r.get("masvs", "MASVS-UNKNOWN"),
            "title": r.get("title", "Fix suggestion"),
            "severity": r.get("severity", "MEDIUM"),
            "rationale": r.get("rationale", ""),
            "steps": r.get("steps", []) or [],
            "patches": [],
            "requires_source": False,
            "confidence": r.get("confidence", "MEDIUM"),
        }

        actions = r.get("actions", []) or []
        for a in actions:
            atype = a.get("type")
            target = a.get("target_file")

            if not enable_patches:
                continue

            # Manifest patch
            if atype == "MANIFEST_SET_EXPORTED_FALSE" and target == "AndroidManifest.xml":
                if not manifest_text:
                    suggestion["requires_source"] = True
                    continue
                new_manifest = set_exported_false(manifest_text)
                if new_manifest != manifest_text:
                    suggestion["patches"].append(
                        {
                            "target_file": "AndroidManifest.xml",
                            "patch_format": "unified_diff",
                            "patch": unified_diff(manifest_text, new_manifest, "AndroidManifest.xml"),
                            "note": "Review: this flips only explicit exported=true to false.",
                        }
                    )

            # Gradle patch
            if atype == "GRADLE_ENABLE_R8" and target == "build.gradle":
                if not gradle_text:
                    suggestion["requires_source"] = True
                    continue
                new_gradle = enable_r8_proguard_groovy(gradle_text)
                if new_gradle != gradle_text:
                    suggestion["patches"].append(
                        {
                            "target_file": "build.gradle",
                            "patch_format": "unified_diff",
                            "patch": unified_diff(gradle_text, new_gradle, "build.gradle"),
                            "note": "If you use Kotlin DSL, patch build.gradle.kts manually.",
                        }
                    )

        suggestions.append(suggestion)

    payload: Dict[str, Any] = {
        "suggestion_id": None,
        "parent_scan_id": parent_scan_id,
        "service": SERVICE_NAME,
        "package": package,
        "suggestions_list": suggestions,
        "meta": {
            "status": "COMPLETED",
            "error": None,
            "duration_ms": t.ms(),
            "engine": ["yaml_rules"],
            "context": {
                "rules_loaded": len(rules),
                "findings_received": len(findings_list),
                "suggestions_count": len(suggestions),
                "patches_enabled": enable_patches,
                "artifacts_provided": sorted(list(artifacts.keys())),
            },
        },
    }
    return payload
