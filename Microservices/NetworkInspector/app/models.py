# app/models.py
from typing import Any, Dict, List, Optional
from pydantic import BaseModel, Field, ConfigDict


class ScanRequest(BaseModel):
    model_config = ConfigDict(extra="allow")

    parent_scan_id: int = Field(..., ge=0)
    package: Optional[str] = None
    max_flows: int = Field(default=50, ge=1, le=5000)
    since_seconds: Optional[int] = Field(default=None, ge=1)


class Finding(BaseModel):
    model_config = ConfigDict(extra="allow")

    id: str
    title: str
    severity: str
    evidence: Dict[str, Any] = Field(default_factory=dict)
    recommendation: str


class MetaContext(BaseModel):
    model_config = ConfigDict(extra="allow")

    flows_file: str
    flows_read: int
    findings_count: int
    since_seconds: Optional[int] = None
    max_flows: int

    # ✅ NEW
    flows_source: Optional[Dict[str, Any]] = None


class Meta(BaseModel):
    model_config = ConfigDict(extra="allow")

    status: str
    error: Optional[str] = None
    duration_ms: int
    engine: List[str] = Field(default_factory=list)
    created_at: int
    context: MetaContext


class ScanResponse(BaseModel):
    model_config = ConfigDict(extra="allow")

    scan_id: Optional[int] = None
    parent_scan_id: int
    service: str
    package: Optional[str] = None
    findings_list: List[Finding] = Field(default_factory=list)
    meta: Meta
