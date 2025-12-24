import json
import sys
import zipfile
from pathlib import Path
from config_loader import (
    get_manifest_patterns,
    get_dangerous_permissions,
)


def read_manifest(zip_file: zipfile.ZipFile):
    try:
        with zip_file.open("AndroidManifest.xml") as manifest_file:
            return manifest_file.read().decode("utf-8", errors="ignore")
    except KeyError:
        return None
    except Exception:
        return None


def scan_manifest(manifest_content: str):
    findings = []
    manifest_patterns = get_manifest_patterns()
    dangerous_permissions = get_dangerous_permissions()

    # Process manifest patterns
    for pattern_config in manifest_patterns:
        check_type = pattern_config.get("check_type", "contains")
        
        if check_type == "contains":
            # Simple pattern matching with optional secondary pattern
            if pattern_config["pattern"] in manifest_content:
                if "secondary_pattern" not in pattern_config or pattern_config["secondary_pattern"] in manifest_content:
                    findings.append(
                        {
                            "microservice": "apk-scanner",
                            "title": pattern_config["title"],
                            "severity": pattern_config["severity"],
                            "cwe": pattern_config["cwe"],
                            "description": pattern_config["description"],
                            "affectedFiles": ["AndroidManifest.xml"],
                            "fixSuggestion": pattern_config["fixSuggestion"],
                            "codeSnippet": pattern_config.get("codeSnippet", ""),
                        }
                    )
        
        elif check_type == "backup_check":
            # Special check for backup: only flag if allowBackup is missing or explicitly true
            if pattern_config["pattern"] not in manifest_content or f'{pattern_config["pattern"]}="true"' in manifest_content:
                findings.append(
                    {
                        "microservice": "apk-scanner",
                        "title": pattern_config["title"],
                        "severity": pattern_config["severity"],
                        "cwe": pattern_config["cwe"],
                        "description": pattern_config["description"],
                        "affectedFiles": ["AndroidManifest.xml"],
                        "fixSuggestion": pattern_config["fixSuggestion"],
                        "codeSnippet": pattern_config.get("codeSnippet", ""),
                    }
                )
        
        elif check_type == "complex":
            # Complex check: must have pattern_must_have, must NOT have pattern_must_not_have
            must_have = pattern_config.get("pattern_must_have", "")
            must_not_have = pattern_config.get("pattern_must_not_have", "")
            
            if must_have in manifest_content and must_not_have not in manifest_content:
                findings.append(
                    {
                        "microservice": "apk-scanner",
                        "title": pattern_config["title"],
                        "severity": pattern_config["severity"],
                        "cwe": pattern_config["cwe"],
                        "description": pattern_config["description"],
                        "affectedFiles": ["AndroidManifest.xml"],
                        "fixSuggestion": pattern_config["fixSuggestion"],
                        "codeSnippet": pattern_config.get("codeSnippet", ""),
                    }
                )

    # Check for dangerous permissions
    for permission_config in dangerous_permissions:
        if permission_config["name"] in manifest_content:
            findings.append(
                {
                    "microservice": "apk-scanner",
                    "title": permission_config["title"],
                    "severity": permission_config["severity"],
                    "cwe": permission_config["cwe"],
                    "description": permission_config["description"],
                    "affectedFiles": ["AndroidManifest.xml"],
                    "fixSuggestion": permission_config["fixSuggestion"],
                }
            )

    return findings


def main():
    if len(sys.argv) < 2:
        print(json.dumps({"findings": []}))
        return

    apk_path = Path(sys.argv[1])
    findings = []

    try:
        with zipfile.ZipFile(apk_path) as zip_file:
            manifest_content = read_manifest(zip_file)
            if manifest_content:
                findings.extend(scan_manifest(manifest_content))
    except Exception as exc:  # pragma: no cover - defensive logging
        print(f"APKScanner error: {exc}", file=sys.stderr)

    print(json.dumps({"findings": findings}))


if __name__ == "__main__":
    main()
