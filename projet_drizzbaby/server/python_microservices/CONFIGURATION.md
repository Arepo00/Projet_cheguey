# Dynamic Microservices Configuration

All microservices now load vulnerability patterns and security checks from `config.json` instead of having them hard-coded.

## Architecture

### Configuration File: `config.json`
Central repository for all vulnerability detection patterns, organized by microservice:
- **manifest_patterns** - APK manifest vulnerabilities (apk-scanner)
- **dangerous_permissions** - Android permissions to flag (apk-scanner)
- **crypto_patterns** - Cryptographic weakness detection (crypto-check)
- **secret_patterns** - Secret/credential detection patterns (secret-hunter)
- **network_patterns** - Network security issues (network-inspector)
- **general_recommendations** - General hardening tips (fix-suggest)

### Configuration Loader: `config_loader.py`
Single-responsibility module that handles:
- Loading `config.json` at startup
- Caching configuration in memory (singleton pattern)
- Providing clean API to retrieve patterns
- Supporting dynamic reload without restarting services

### Updated Microservices
Each microservice now imports patterns from the loader instead of defining them inline:

| Service | Config Used | Key Classes |
|---------|-------------|------------|
| apk_scanner.py | manifest_patterns, dangerous_permissions | Manifest/permission checks |
| crypto_check.py | crypto_patterns | Cryptographic weakness detection |
| secret_hunter.py | secret_patterns | Hardcoded secret detection |
| network_inspector.py | network_patterns | Network security checks |
| fix_suggest.py | general_recommendations | General security recommendations |

## How to Customize Detections

### Add a New Cryptographic Vulnerability Pattern

Edit `config.json` and add to `crypto_patterns`:

```json
{
  "id": "insecure_padding",
  "name": "PKCS1 Padding",
  "pattern": "PKCS1Padding",
  "severity": "high",
  "cwe": "CWE-327",
  "title": "Insecure PKCS1 Padding",
  "description": "Application uses PKCS1 padding which is vulnerable to padding oracle attacks.",
  "fixSuggestion": "Use OAEP padding instead.",
  "codeSnippet": "Cipher cipher = Cipher.getInstance(\"RSA/ECB/OAEPWithSHA-256AndMGF1Padding\");"
}
```

### Add a New Secret Detection Pattern

Edit `config.json` and add to `secret_patterns`:

```json
{
  "id": "stripe_key",
  "name": "Stripe API Key",
  "pattern": "sk_(live|test)_[0-9a-zA-Z]{20,}",
  "severity": "critical",
  "cwe": "CWE-798",
  "title": "Stripe API Key Detected",
  "description": "Stripe API key found in source code.",
  "fixSuggestion": "Store secrets in BuildConfig or environment variables."
}
```

### Add a New Manifest Check

Edit `config.json` and add to `manifest_patterns`:

```json
{
  "id": "receiver_exported",
  "name": "Exported Receiver",
  "check_type": "contains",
  "pattern": "<receiver",
  "secondary_pattern": "exported=\"true\"",
  "severity": "medium",
  "cwe": "CWE-927",
  "title": "Unprotected Exported Receiver",
  "description": "Broadcast receiver is exported without permission protection.",
  "fixSuggestion": "Add android:permission attribute or set exported=\"false\"."
}
```

### Check Types for Manifest Patterns

1. **contains** - Simple string contains check
   - `pattern`: String to search for
   - `secondary_pattern` (optional): Must also be present

2. **backup_check** - Special logic for allowBackup flag
   - Only triggers if pattern is missing OR explicitly true

3. **complex** - Multi-condition check
   - `pattern_must_have`: String that must be present
   - `pattern_must_not_have`: String that must NOT be present

## Using the Configuration Loader

### In Python Code

```python
from config_loader import get_crypto_patterns, get_secret_patterns

# Load patterns
crypto_patterns = get_crypto_patterns()

# Use patterns
for pattern_config in crypto_patterns:
    regex = re.compile(pattern_config["pattern"], re.IGNORECASE)
    if regex.search(content):
        # Create finding...
        pass
```

### Reloading Configuration at Runtime

```python
from config_loader import reload_config

# Force reload from disk (useful if config.json was updated)
reload_config()
```

## Benefits

✅ **No Code Changes** - Update vulnerability rules without restarting services  
✅ **Centralized Management** - All patterns in one place  
✅ **Easy Customization** - JSON is human-readable and easy to edit  
✅ **Version Control** - Track pattern changes in git  
✅ **Multi-tenant Ready** - Can load different config per organization/project  
✅ **A/B Testing** - Enable/disable patterns for testing new detections  
✅ **Maintainability** - Separate concerns: logic vs. data  

## Versioning Strategy (Optional)

Add versioning to track changes:

```json
{
  "version": "1.0.0",
  "lastUpdated": "2025-12-02",
  "patterns": { ... }
}
```

## Future Enhancements

1. **Database Backend** - Store patterns in PostgreSQL for multi-tenant support
2. **Admin API** - REST endpoints to manage patterns dynamically
3. **Pattern Metrics** - Track false positives/negatives per pattern
4. **Scheduling** - Update patterns on a schedule from a remote source
5. **Custom Pattern Language** - Domain-specific syntax for pattern definition
