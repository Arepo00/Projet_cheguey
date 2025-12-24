from typing import Any, Dict, List, Optional
from pydantic import BaseModel, Field

class Finding(BaseModel):
    id: str
    title: Optional[str] = None
    severity: Optional[str] = None
    evidence: Optional[Dict[str, Any]] = None
    recommendation: Optional[str] = None

class FixRequest(BaseModel):
    parent_scan_id: int = 0
    package: str = "unknown"
    findings_list: Optional[List[Finding]] = None

    # OPTIONAL: if you can provide source artifacts, we generate real patches
    # keys examples: "AndroidManifest.xml", "build.gradle", "build.gradle.kts"
    artifacts: Optional[Dict[str, str]] = None

    enable_patches: bool = True
    max_suggestions: int = 50

class Patch(BaseModel):
    target_file: str
    patch_format: str = "unified_diff"
    patch: str
    note: Optional[str] = None

class Suggestion(BaseModel):
    rule_id: str
    masvs: str
    title: str
    severity: str
    rationale: str
    steps: List[str] = Field(default_factory=list)
    patches: List[Patch] = Field(default_factory=list)
    requires_source: bool = False
    confidence: str = "MEDIUM"

class FixResponse(BaseModel):
    suggestion_id: Optional[int] = None
    parent_scan_id: int
    service: str
    package: str
    suggestions_list: List[Suggestion]
    meta: Dict[str, Any]
