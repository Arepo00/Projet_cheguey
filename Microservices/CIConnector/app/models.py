from typing import Dict, Optional, Literal, Any
from pydantic import BaseModel, Field

CIType = Literal["github_actions", "gitlab_ci"]

class GenerateRequest(BaseModel):
    ci: CIType = Field(..., description="github_actions or gitlab_ci")
    plugin: str = Field("default", description="Plugin name from config/plugins")
    variables: Dict[str, str] = Field(default_factory=dict, description="Variables to substitute in plugin YAML")
    override_scan_script: Optional[str] = Field(
        None,
        description="If provided, overrides the scan script block used by the plugin"
    )

class GenerateResponse(BaseModel):
    ci: CIType
    plugin: str
    filename_hint: str
    yaml: str
    meta: Dict[str, Any]
