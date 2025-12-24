import json
import re
import sys
import zipfile
from pathlib import Path
from config_loader import get_secret_patterns


def scan_entry(entry_name: str, content: str, found_secrets: set):
    findings = []
    secret_patterns = get_secret_patterns()
    
    for pattern_config in secret_patterns:
        # Compile regex pattern from string
        regex_pattern = re.compile(pattern_config["pattern"], re.IGNORECASE)
        matches = list(regex_pattern.finditer(content))
        
        if matches:
            key = f"{pattern_config['id']}-{entry_name}"
            if key in found_secrets:
                continue
            found_secrets.add(key)
            findings.append(
                {
                    "microservice": "secret-hunter",
                    "title": f"Hardcoded {pattern_config['name']} Detected",
                    "severity": pattern_config["severity"],
                    "cwe": pattern_config["cwe"],
                    "description": pattern_config["description"],
                    "affectedFiles": [entry_name],
                    "fixSuggestion": "Store secrets in BuildConfig, environment variables, or use Android Keystore for secure storage. Never commit secrets to version control.",
                    "codeSnippet": '// Instead of:\nString API_KEY = "sk_live_12345";\n\n// Use:\nString API_KEY = BuildConfig.API_KEY;',
                }
            )
    return findings


def main():
    if len(sys.argv) < 2:
        print(json.dumps({"findings": []}))
        return

    apk_path = Path(sys.argv[1])
    findings = []
    found_secrets: set[str] = set()

    try:
        with zipfile.ZipFile(apk_path) as zip_file:
            for entry in zip_file.infolist():
                if entry.is_dir():
                    continue
                name = entry.filename
                if any(name.endswith(ext) for ext in [".png", ".jpg", ".dex", ".so"]):
                    continue

                try:
                    with zip_file.open(entry) as file_obj:
                        content = file_obj.read().decode("utf-8", errors="ignore")
                        findings.extend(scan_entry(name, content, found_secrets))
                except Exception:
                    continue
    except Exception as exc:  # pragma: no cover - defensive logging
        print(f"SecretHunter error: {exc}", file=sys.stderr)

    print(json.dumps({"findings": findings}))


if __name__ == "__main__":
    main()
