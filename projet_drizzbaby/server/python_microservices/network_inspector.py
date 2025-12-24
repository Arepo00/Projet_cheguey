import json
import re
import sys
import zipfile
from pathlib import Path
from config_loader import get_network_patterns

TEXT_EXTENSIONS = {".xml", ".json", ".txt", ".properties", ".gradle", ".js", ".kt", ".java", ".smali"}


def scan_entry(entry_name: str, content: str, seen: set[str]):
    findings = []
    network_patterns = get_network_patterns()

    for pattern_config in network_patterns:
        regex_pattern = re.compile(pattern_config["pattern"], re.IGNORECASE)
        
        if pattern_config["id"] == "cleartext_endpoint":
            # Special handling for cleartext endpoints to extract individual matches
            for match in regex_pattern.findall(content):
                key = f"{entry_name}-{match}"
                if key in seen:
                    continue
                seen.add(key)
                findings.append(
                    {
                        "microservice": "network-inspector",
                        "title": pattern_config["title"],
                        "severity": pattern_config["severity"],
                        "cwe": pattern_config["cwe"],
                        "description": f"Endpoint {match} uses HTTP. Cleartext traffic can be intercepted or modified.",
                        "affectedFiles": [entry_name],
                        "fixSuggestion": pattern_config["fixSuggestion"],
                        "codeSnippet": f"Found reference to {match}",
                    }
                )
        else:
            # General pattern matching
            if regex_pattern.search(content):
                key = f"{entry_name}-{pattern_config['id']}"
                if key not in seen:
                    seen.add(key)
                    findings.append(
                        {
                            "microservice": "network-inspector",
                            "title": pattern_config["title"],
                            "severity": pattern_config["severity"],
                            "cwe": pattern_config["cwe"],
                            "description": pattern_config["description"],
                            "affectedFiles": [entry_name],
                            "fixSuggestion": pattern_config["fixSuggestion"],
                        }
                    )

    return findings


def main():
    if len(sys.argv) < 2:
        print(json.dumps({"findings": []}))
        return

    apk_path = Path(sys.argv[1])
    findings = []
    seen: set[str] = set()

    try:
        with zipfile.ZipFile(apk_path) as zip_file:
            for entry in zip_file.infolist():
                if entry.is_dir():
                    continue
                name = entry.filename
                if not any(name.endswith(ext) for ext in TEXT_EXTENSIONS):
                    continue

                try:
                    with zip_file.open(entry) as file_obj:
                        content = file_obj.read().decode("utf-8", errors="ignore")
                        findings.extend(scan_entry(name, content, seen))
                except Exception:
                    continue
    except Exception as exc:  # pragma: no cover - defensive logging
        print(f"NetworkInspector error: {exc}", file=sys.stderr)

    print(json.dumps({"findings": findings}))


if __name__ == "__main__":
    main()
