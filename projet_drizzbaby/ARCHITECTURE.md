# 🏗️ Dynamic Microservices Architecture

## System Overview

```
┌─────────────────────────────────────────────────────────────┐
│                    APK/Application File                     │
└────────────────────┬────────────────────────────────────────┘
                     │
        ┌────────────┼────────────┐
        │            │            │
        ▼            ▼            ▼
   ┌─────────┐  ┌──────────┐  ┌──────────────┐
   │   APK   │  │AndroidX  │  │Source Code   │
   │Scanner  │  │Manifest  │  │Files         │
   └────┬────┘  └────┬─────┘  └──────┬───────┘
        │            │               │
        └────────────┼───────────────┘
                     │
        ┌────────────▼────────────┐
        │   Microservices (5)     │
        │  1. apk_scanner         │
        │  2. crypto_check        │
        │  3. secret_hunter       │
        │  4. network_inspector   │
        │  5. fix_suggest         │
        └────────────┬────────────┘
                     │
        ┌────────────▼────────────┐
        │  config_loader.py       │
        │  (Singleton Manager)    │
        └────────────┬────────────┘
                     │
        ┌────────────▼────────────┐
        │    config.json          │
        │  (34 Patterns)          │
        └─────────────────────────┘
```

## Detailed Architecture

### Layer 1: Microservices (Updated)
```
┌──────────────────────────────────────────────────────────────┐
│                    Microservices Layer                       │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  apk_scanner.py         ← Loads manifest_patterns from config
│  ├─ read_manifest()     ← Uses get_manifest_patterns()
│  └─ scan_manifest()     ← Uses get_dangerous_permissions()
│                                                              │
│  crypto_check.py        ← Loads crypto_patterns from config
│  ├─ scan_entry()        ← Uses get_crypto_patterns()
│  └─ Compiles regex at runtime from strings
│                                                              │
│  secret_hunter.py       ← Loads secret_patterns from config
│  ├─ scan_entry()        ← Uses get_secret_patterns()
│  └─ Regex patterns stored as JSON strings
│                                                              │
│  network_inspector.py   ← Loads network_patterns from config
│  ├─ scan_entry()        ← Uses get_network_patterns()
│  └─ Multiple pattern types supported
│                                                              │
│  fix_suggest.py         ← Loads general_recommendations
│  └─ Uses get_general_recommendations()
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

### Layer 2: Configuration Manager (NEW)
```
┌──────────────────────────────────────────────────────────────┐
│                  config_loader.py                             │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  ConfigLoader (Singleton)                                   │
│  ├─ __new__()           ← Singleton initialization
│  ├─ load_config()       ← Load JSON (cached)
│  ├─ get_manifest_patterns()                                 │
│  ├─ get_dangerous_permissions()                             │
│  ├─ get_crypto_patterns()                                   │
│  ├─ get_secret_patterns()                                   │
│  ├─ get_network_patterns()                                  │
│  ├─ get_general_recommendations()                           │
│  └─ reload_config()     ← Force reload from disk
│                                                              │
│  Public Functions (Easy API)                                │
│  ├─ get_manifest_patterns()     ← Convenience function
│  ├─ get_dangerous_permissions() ← Convenience function
│  ├─ get_crypto_patterns()       ← Convenience function
│  ├─ get_secret_patterns()       ← Convenience function
│  ├─ get_network_patterns()      ← Convenience function
│  ├─ get_general_recommendations() ← Convenience function
│  └─ reload_config()             ← Convenience function
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

### Layer 3: Configuration File (NEW)
```
┌──────────────────────────────────────────────────────────────┐
│                    config.json (290 lines)                   │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  manifest_patterns (4 items)                                │
│  ├─ debuggable_enabled (check_type: contains)
│  ├─ backup_enabled (check_type: backup_check)
│  ├─ cleartext_traffic (check_type: contains)
│  └─ exported_component (check_type: complex)
│                                                              │
│  dangerous_permissions (7 items)                            │
│  ├─ READ_SMS                                                │
│  ├─ SEND_SMS                                                │
│  ├─ READ_CONTACTS                                           │
│  ├─ WRITE_CONTACTS                                          │
│  ├─ ACCESS_FINE_LOCATION                                    │
│  ├─ CAMERA                                                  │
│  └─ RECORD_AUDIO                                            │
│                                                              │
│  crypto_patterns (6 items)                                  │
│  ├─ aes_ecb          ← Pattern: "AES/ECB"
│  ├─ md5_hash         ← Pattern: regex string
│  ├─ sha1_hash        ← Pattern: regex string
│  ├─ weak_random      ← Pattern: regex string
│  ├─ des_encryption   ← Pattern: "DES"
│  └─ hardcoded_iv     ← Pattern: regex string
│                                                              │
│  secret_patterns (6 items)                                  │
│  ├─ aws_key          ← Pattern: "AKIA[0-9A-Z]{16}"
│  ├─ generic_api_key  ← Pattern: regex string
│  ├─ private_key      ← Pattern: regex string
│  ├─ oauth_token      ← Pattern: regex string
│  ├─ database_password ← Pattern: regex string
│  └─ jwt_token        ← Pattern: regex string
│                                                              │
│  network_patterns (2 items)                                 │
│  ├─ cleartext_endpoint ← Pattern: "http://..."
│  └─ trust_all_hosts  ← Pattern: regex string
│                                                              │
│  general_recommendations (3 items)                          │
│  ├─ network_security_config                                 │
│  ├─ harden_release_build                                    │
│  └─ validate_exported_components                            │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

## Data Flow

### Initialization
```
1. Microservice starts
   ↓
2. Imports config_loader
   ↓
3. Calls get_X_patterns()
   ↓
4. ConfigLoader.__init__() → Singleton check
   ↓
5. Load config.json (once, cached)
   ↓
6. Return pattern array
   ↓
7. Microservice processes APK
```

### Pattern Matching
```
APK File → Microservice → Load Pattern → Compile Regex → Scan → Report Finding
                ↓
           config_loader
                ↓
           config.json
```

## Pattern Format Transformation

### In config.json (String)
```json
{
  "id": "aes_ecb",
  "pattern": "AES/ECB",
  "severity": "high"
}
```

### At Runtime (Compiled)
```python
pattern_config = {"id": "aes_ecb", "pattern": "AES/ECB", ...}
regex = re.compile(pattern_config["pattern"], re.IGNORECASE)
# Now regex is ready to use for matching
```

## Call Graph: Adding a Finding

```
scan_entry(filename, content)
    ├─ patterns = get_crypto_patterns()
    │   ├─ ConfigLoader.get_crypto_patterns()
    │   │   ├─ load_config()
    │   │   │   └─ Return cached _config["crypto_patterns"]
    │   │   └─ Return [pattern1, pattern2, ...]
    │   └─ Return patterns
    │
    ├─ for each pattern in patterns:
    │   ├─ pattern = {id, name, pattern_string, severity, cwe, ...}
    │   ├─ regex = re.compile(pattern["pattern"], re.IGNORECASE)
    │   ├─ if regex.search(content):
    │   │   └─ Create and append finding
    │   │       └─ {microservice, title, severity, cwe, description, ...}
    │   └─ next pattern
    │
    └─ return findings
```

## Configuration Access Patterns

### Pattern 1: Direct Convenience Import
```python
from config_loader import get_crypto_patterns
patterns = get_crypto_patterns()
```

### Pattern 2: Class Method
```python
from config_loader import ConfigLoader
patterns = ConfigLoader.get_crypto_patterns()
```

### Pattern 3: Full Config Access
```python
from config_loader import ConfigLoader
config = ConfigLoader.load_config()
patterns = config["crypto_patterns"]
```

### Pattern 4: Runtime Reload
```python
from config_loader import reload_config
reload_config()  # Force re-read from disk
patterns = get_crypto_patterns()
```

## Caching Strategy

```
First Call:
  read_file(config.json) → Parse JSON → Cache in memory

Subsequent Calls:
  Return cached config (no file I/O)

Force Reload:
  reload_config() → Clear cache → read_file() → Parse → Cache
```

## Microservice Output Format (Unchanged)

All microservices return same JSON structure:

```json
{
  "findings": [
    {
      "microservice": "crypto-check",
      "title": "Insecure AES/ECB Encryption",
      "severity": "high",
      "cwe": "CWE-327",
      "description": "Application uses AES in ECB mode...",
      "affectedFiles": ["classes.dex"],
      "fixSuggestion": "Use AES/GCM or AES/CBC mode...",
      "codeSnippet": "// Use:\nCipher cipher = ..."
    }
  ]
}
```

## Extensibility Points

### Future: Database Backend
```
Microservice
    ↓
config_loader
    ├─ Load from JSON (current)
    └─ Load from Database (future)
        ├─ SELECT * FROM patterns WHERE type = 'crypto'
        └─ Cache in memory
```

### Future: API Gateway
```
Client → REST API → Database → config_loader → Microservice
```

### Future: Multi-Tenant
```
Request: /api/scan?tenant=org1
    ↓
config_loader.load_config(tenant_id="org1")
    ↓
Load tenant-specific patterns
    ↓
Execute scan with tenant rules
```

## Summary

```
┌─────────────────────────────────────────┐
│  Clean, Maintainable Architecture       │
├─────────────────────────────────────────┤
│  Layer 1: Microservices (Logic)        │
│  Layer 2: ConfigLoader (Management)    │
│  Layer 3: config.json (Data)           │
│                                         │
│  ✅ Separation of concerns             │
│  ✅ Single responsibility              │
│  ✅ Easy to extend                     │
│  ✅ Scalable design                    │
└─────────────────────────────────────────┘
```
