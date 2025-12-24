import json
import sys
from pathlib import Path
from config_loader import get_general_recommendations


def main():
    if len(sys.argv) < 2:
        print(json.dumps({"findings": []}))
        return

    apk_path = Path(sys.argv[1])
    app_name = apk_path.stem

    # Load recommendations from configuration
    recommendations = get_general_recommendations()
    findings = [
        {
            "microservice": "fix-suggest",
            "title": rec["title"],
            "severity": rec["severity"],
            "description": rec["description"],
            "fixSuggestion": rec["fixSuggestion"],
            "codeSnippet": rec.get("codeSnippet", ""),
        }
        for rec in recommendations
    ]

    print(json.dumps({"findings": findings, "app": app_name}))


if __name__ == "__main__":
    main()
