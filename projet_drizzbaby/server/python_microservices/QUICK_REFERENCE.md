# Quick Reference - Dynamic Microservices

## What You Need to Know

### All Vulnerability Patterns Are Now in `config.json`

Instead of being scattered in Python code, all vulnerability detection patterns are centralized in a single JSON configuration file.

## Files Modified

```
server/python_microservices/
├── apk_scanner.py          ← Now loads from config
├── crypto_check.py         ← Now loads from config
├── secret_hunter.py        ← Now loads from config
├── network_inspector.py    ← Now loads from config
├── fix_suggest.py          ← Now loads from config
├── config.json             ← NEW: Central config file
├── config_loader.py        ← NEW: Configuration manager
└── CONFIGURATION.md        ← NEW: How-to guide
```

## How to Add/Update Vulnerability Patterns

### 1. Open `config.json`

### 2. Find the Right Section

| Pattern Type | Section | Used By |
|---|---|---|
| Android Manifest checks | `manifest_patterns` | apk_scanner.py |
| Dangerous Android permissions | `dangerous_permissions` | apk_scanner.py |
| Cryptographic weaknesses | `crypto_patterns` | crypto_check.py |
| Hardcoded secrets/credentials | `secret_patterns` | secret_hunter.py |
| Network security issues | `network_patterns` | network_inspector.py |
| General recommendations | `general_recommendations` | fix_suggest.py |

### 3. Add Your Pattern

**Example: Add new crypto pattern**

```json
{
  "id": "rsa_no_padding",
  "name": "RSA Without Padding",
  "pattern": "RSA/ECB/NoPadding",
  "severity": "critical",
  "cwe": "CWE-327",
  "title": "RSA Encryption Without Padding",
  "description": "RSA without padding is vulnerable to various attacks.",
  "fixSuggestion": "Use RSA/ECB/OAEPWithSHA-256AndMGF1Padding",
  "codeSnippet": "cipher.getInstance(\"RSA/ECB/OAEPWithSHA-256AndMGF1Padding\");"
}
```

### 4. Save the File

Services will automatically load the new pattern on next scan.

## Pattern Field Reference

### Required Fields (All Patterns)

| Field | Type | Example |
|---|---|---|
| `id` | string | "aes_ecb" |
| `title` | string | "Insecure AES/ECB Encryption" |
| `severity` | string | "high" (critical/high/medium/low) |
| `cwe` | string | "CWE-327" |
| `description` | string | "Detailed explanation of the vulnerability" |
| `fixSuggestion` | string | "How to fix the issue" |

### Pattern-Specific Fields

**For Crypto/Secret/Network Patterns:**
- `name` (string) - Pattern name
- `pattern` (string) - Regex pattern to match

**For Manifest Patterns:**
- `check_type` (string) - "contains", "backup_check", or "complex"
- `pattern` or `pattern_must_have` (string) - Text to search for
- `secondary_pattern` or `pattern_must_not_have` (string, optional) - Additional conditions

**Optional Fields (Any Pattern):**
- `codeSnippet` - Code example showing the issue
- `enabled` - Set to `false` to temporarily disable a pattern

## Examples

### Example 1: Add Stripe Key Detection

```json
{
  "id": "stripe_api_key",
  "name": "Stripe API Key",
  "pattern": "sk_(live|test)_[0-9a-zA-Z]{20,}",
  "severity": "critical",
  "cwe": "CWE-798",
  "title": "Stripe API Key Detected",
  "description": "Stripe API key found in application code.",
  "fixSuggestion": "Use environment variables or secure configuration management."
}
```

Add to `secret_patterns` array in config.json.

### Example 2: Add HTTP Endpoint Check

```json
{
  "id": "google_api_http",
  "name": "Google API HTTP",
  "pattern": "http://www\\.googleapis\\.com",
  "severity": "high",
  "cwe": "CWE-319",
  "title": "Google API Called Over HTTP",
  "description": "Google APIs should be called over HTTPS.",
  "fixSuggestion": "Use https://www.googleapis.com instead of http."
}
```

Add to `network_patterns` array in config.json.

### Example 3: Add Manifest Permission Check

```json
{
  "id": "dangerous_permission_phone",
  "name": "READ_PHONE_STATE",
  "severity": "low",
  "cwe": "CWE-250",
  "title": "Potentially Excessive Permission: READ_PHONE_STATE",
  "description": "Application requests phone state permission.",
  "fixSuggestion": "Only request if truly necessary and request at runtime."
}
```

Add to `dangerous_permissions` array in config.json.

## Testing Your Changes

After editing config.json, run a scan:

```bash
python apk_scanner.py /path/to/app.apk
python crypto_check.py /path/to/app.apk
python secret_hunter.py /path/to/app.apk
```

Your new patterns will be automatically loaded and used.

## Common Pattern Regex Examples

```
AWS Key:              AKIA[0-9A-Z]{16}
API Key:              [aA][pP][iI]_[kK][eE][yY].*["']([a-zA-Z0-9_\-]{20,})
JWT Token:            eyJ[a-zA-Z0-9_-]*\.eyJ[a-zA-Z0-9_-]*\.[a-zA-Z0-9_-]*
Private Key:          -----BEGIN (RSA |EC )?PRIVATE KEY-----
Database Password:    [pP][aA][sS][sS][wW][oO][rR][dD].*["']([^"']{3,})
URL Endpoint:         https?://[a-zA-Z0-9_\.\-:/]+
IP Address:           \b([0-9]{1,3}\.){3}[0-9]{1,3}\b
```

## Tips

✅ Use `\b` for word boundaries in regex  
✅ Always test regex patterns before adding  
✅ Use descriptive `id` values for easy reference  
✅ Include `codeSnippet` for better UX  
✅ Keep descriptions concise but detailed  
✅ Group related patterns together  

## Troubleshooting

**Pattern not detected?**
- Check regex syntax: Use online regex tester
- Verify severity level (critical/high/medium/low)
- Ensure `id` is unique
- Check file extensions in microservice

**Unexpected findings?**
- Review regex - might be too broad
- Check secondary/must_have/must_not_have conditions
- Test with sample APK

## Getting Help

See `CONFIGURATION.md` for detailed documentation.
