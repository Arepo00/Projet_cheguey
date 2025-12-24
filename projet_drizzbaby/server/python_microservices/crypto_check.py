import json
import re
import sys
import zipfile
from pathlib import Path
from config_loader import get_crypto_patterns

TEXT_EXTENSIONS = {".java", ".kt", ".smali", ".xml", ".txt", ".properties"}


def scan_entry(entry_name: str, content: str, found_issues: set):
    findings = []
    crypto_patterns = get_crypto_patterns()
    
    for pattern_config in crypto_patterns:
        # Compile regex pattern from string
        regex_pattern = re.compile(pattern_config["pattern"], re.IGNORECASE)
        
        if regex_pattern.search(content):
            key = f"{pattern_config['id']}-{entry_name}"
            if key in found_issues:
                continue
            found_issues.add(key)
            findings.append(
                {
                    "microservice": "crypto-check",
                    "title": pattern_config["title"],
                    "severity": pattern_config["severity"],
                    "cwe": pattern_config["cwe"],
                    "description": pattern_config["description"],
                    "affectedFiles": [entry_name],
                    "fixSuggestion": pattern_config["fixSuggestion"],
                    "codeSnippet": pattern_config.get("codeSnippet", ""),
                }
            )
    return findings


def main():
    if len(sys.argv) < 2:
        print(json.dumps({"findings": []}))
        return

    apk_path = Path(sys.argv[1])
    findings = []
    found_issues: set[str] = set()

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
                        findings.extend(scan_entry(name, content, found_issues))
                except Exception:
                    continue
    except Exception as exc:  # pragma: no cover - defensive logging
        print(f"CryptoCheck error: {exc}", file=sys.stderr)

    print(json.dumps({"findings": findings}))


if __name__ == "__main__":
    main()
