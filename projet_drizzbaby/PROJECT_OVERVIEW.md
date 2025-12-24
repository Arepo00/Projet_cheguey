# Project Overview — projet_drizzbaby

This document provides a comprehensive textual summary of the project: architecture, microservices roles, dependencies, dataflow, API surface, storage, run instructions, configuration and operational notes. It is intentionally detailed and written as plain text (no diagrams).

---

**Project Purpose**

projet_drizzbaby is an Express + TypeScript server hosting a React (Vite) UI and coordinating several Python microservices that analyze Android APK files for security issues. The system is configuration-driven: vulnerability detection patterns live in a JSON config (`server/python_microservices/config.json`) and Python microservices load these patterns at runtime.

---

**Top-level structure (important directories and files)**

- `package.json` — Node project metadata and scripts. Key scripts: `dev`, `build`, `start`.
- `client/` — Vite + React frontend.
  - `client/src/main.tsx` — app entry.
  - `client/src/App.tsx` — top-level routes: Dashboard, Scan page, Report page.
- `server/` — main backend code (TypeScript).
  - `server/index.ts` — Express app creation, request logging middleware, vite dev integration and server start.
  - `server/routes.ts` — API routes for scans, file upload, starting scans, and report generation. Orchestrates microservices and stores results.
  - `server/storage.ts` — in-memory `MemStorage` implementation used by the app for scans and findings during runtime (no external DB by default).
  - `server/vite.ts` — Vite dev server integration helpers (used only in development).
  - `server/microservices/python-runner.ts` — small runner which executes Python microservice scripts and parses JSON output.
  - `server/python_microservices/` — Python-based microservices and `config_loader.py` + `config.json` (vulnerability pattern repository).
    - `apk_scanner.py` — inspects the APK manifest and permissions.
    - `secret_hunter.py` — searches APK files for hardcoded secrets using regex patterns from `config.json`.
    - `crypto_check.py` — scans textual resources for insecure cryptographic usage.
    - `network_inspector.py` — finds insecure network endpoints, permissive TLS usage, and related issues.
    - `report_gen.py`, `fix_suggest.py`, `ci_connector.py` — additional microservices for generating metadata, fix suggestions and CI readiness checks.
- `shared/` — Type definitions shared between server and client microservices.
  - `shared/microservices.ts` — canonical list of microservices (id, script, description), used by server orchestration.
  - `shared/schema.ts` — Drizzle ORM schemas and Zod insert schemas; also defines TypeScript types used by the backend.
- `server/python_microservices/config.json` — master configuration of detection patterns including manifest checks, permission lists, crypto checks, secret regexes, network patterns and general recommendations (now 112+ patterns).
- `uploads/` — runtime directory where uploaded APK files are stored.
- `PATTERNS_CONFIGURATION_112.md` — documentation describing the 112 patterns (already present).
- multiple docs (DEBUG_GUIDE.md, TERMINAL_LOG_GUIDE.md, etc.) describing debugging and testing practices.

---

Architecture Overview (behavioral description)

- Client (browser) provides a UI to upload an APK and request a scan. It uses React with `wouter` routing and React Query for data fetching.
- The server is a single Express application that exposes a REST API under `/api/*`. It serves both the API and the client bundle. In development, Vite is used to serve the frontend with hot reload.
- Scanning is a two-step process:
  1. Upload: Client posts an APK file to `POST /api/scans/upload` (multipart form with `apk` field). The server validates the upload, creates a `Scan` record (status `pending`) using in-memory storage, and returns a `scanId`.
  2. Start: Client calls `POST /api/scans/:id/start`. The server updates the scan status to `running` and launches all configured Python microservices in parallel using `server/microservices/python-runner.ts`.
- Python microservices each analyze the APK and print a JSON object to `stdout` with a `findings` array. The runner expects that stdout is JSON and parses it.
- The server aggregates findings, validates them against Zod schemas (from `shared/schema.ts`), stores them via `storage.createFinding`, and finally updates the scan status to `complete` with a duration and an `overallScore` computed from finding severities.
- Reports are available at `GET /api/scans/:id/report` which returns the scan object plus grouped findings (grouped by microservice id using the `shared/microservices.ts` list).

---

Microservices — Roles and behavior (detailed)

The canonical microservice list is defined in `shared/microservices.ts`. Each microservice is a Python script located in `server/python_microservices`. The runner executes each script with the APK path as single CLI argument. Each microservice returns a JSON object containing `findings` (array). Each finding is an object with fields similar to `shared/schema.ts` (except the server adds `scanId` before storing). Below are per-service details:

1) `apk-scanner` (`apk_scanner.py`)
- Purpose: Analyze `AndroidManifest.xml` contents to detect insecure settings and dangerous permissions.
- Input: APK file path.
- Behavior:
  - Reads `AndroidManifest.xml` from inside the APK (ZIP).
  - Loads `manifest_patterns` and `dangerous_permissions` from `config.json` via `config_loader.py`.
  - Supports multiple check types: `contains`, `backup_check`, and `complex` (must-have / must-not-have).
  - Emits findings for detected manifest issues and each matched dangerous permission.
- Output: JSON `{ findings: [ { microservice: "apk-scanner", title, severity, cwe, description, affectedFiles, fixSuggestion, codeSnippet } ] }`.

2) `secret-hunter` (`secret_hunter.py`)
- Purpose: Search all non-binary entries in the APK ZIP for regexes that match secrets (API keys, tokens, private keys).
- Input: APK path.
- Behavior:
  - Excludes binary assets like `.png`, `.jpg`, `.dex`, `.so`.
  - Decodes textual files to UTF-8 (ignore errors) and runs all regex patterns from `secret_patterns`.
  - De-duplicates findings using a `found_secrets` set keyed by `patternId` + `entryName` to avoid repeated hits inside the same entry.
  - Each match produces a finding with remediation guidance.
- Output: Same JSON structure; microservice id `secret-hunter`.

3) `crypto-check` (`crypto_check.py`)
- Purpose: Detect insecure cryptographic usage across textual resources (Java/Kotlin/smali/XML/etc.).
- Behavior:
  - Scans files with extensions `.java`, `.kt`, `.smali`, `.xml`, `.txt`, `.properties`.
  - Loads `crypto_patterns` from `config.json`, uses regex to find matches, and emits findings per matched file.
  - Deduplicates via a `found_issues` set keyed by `patternId` + `entryName`.
- Output: findings with `microservice: "crypto-check"`.

4) `network-inspector` (`network_inspector.py`)
- Purpose: Find insecure endpoints (http://), permissive TLS/hostname verification code, weak cipher references, missing pinning, and localhost references.
- Behavior:
  - Scans common textual files and looks for patterns defined in `network_patterns` from `config.json`.
  - Special handling for `cleartext_endpoint` to report each distinct URL match rather than once per file.
- Output: findings with `microservice: "network-inspector"`.

5) `report-gen`, `fix-suggest`, `ci-connector` (report_gen.py, fix_suggest.py, ci_connector.py)
- Purpose: produce metadata, provide remediation suggestions and evaluate CI/CD readiness. They follow the same input/output contract (accept APK path, return JSON with `findings`).

Notes on microservice design
- All microservices use `config_loader.py` to load `config.json` once per process (cached singleton). `config.json` is the single source of truth for patterns.
- Deduplication strategy: The Python scripts maintain local sets to avoid repeated findings within one run. The server performs no deduplication beyond validating and storing findings.
- Error handling: Microservices are defensive — on exceptions they print error messages to stderr and return an empty findings list; the runner catches execution errors and returns an empty result.

---

Configuration (`config.json`)

- Location: `server/python_microservices/config.json`.
- Purpose: Defines all detection patterns grouped under keys: `manifest_patterns`, `dangerous_permissions`, `crypto_patterns`, `secret_patterns`, `network_patterns`, `general_recommendations`.
- Current size: 112+ patterns (the file contains many regex patterns, severity values, CWE mappings, titles, descriptions and `fixSuggestion` text).
- Loading: `ConfigLoader` in Python loads and caches the JSON at first use; `reload_config()` forces reload.
- Extensibility: Add a new detector by creating a new entry under the appropriate array (pattern object schema is consistent). Microservices read patterns dynamically without code changes.

---

Data Model and Validation

- Database schema (Drizzle) is declared in `shared/schema.ts`: `scans` and `findings` tables are described there.
- In runtime the project uses `MemStorage` (in `server/storage.ts`) — a simple in-memory store that implements `createScan`, `getScan`, `getAllScans`, `updateScanStatus`, `createFinding` and `getFindingsByScanId`.
- In a DB-backed deployment the `scans` and `findings` schema are ready for Postgres (drizzle-orm). Drizzle tools are referenced in `package.json` (`drizzle-kit`).
- Validation: Before inserting findings, server-side code uses `insertFindingSchema` (Zod schema generated from Drizzle table) to validate data.

---

API Surface (routes summary)

1. `GET /api/scans`
- Returns: list of scans (most recent first) from storage.

2. `GET /api/scans/:id`
- Returns: scan object or 404.

3. `GET /api/scans/:id/findings`
- Returns: findings for given scan id.

4. `POST /api/scans/upload` (multipart)
- Accepts: `apk` file in form-data (field name: `apk`). Optional body fields: `appName`, `packageName`, `version`.
- Behavior: Validates upload, stores file in `uploads/`, creates a `Scan` record with status `pending`, returns `{ scanId }`.
- Constraints: File filter allows only `.apk` and limit ~100MB.

5. `POST /api/scans/:id/start`
- Behavior: Sets scan status to `running` and runs all microservices in parallel; findings are stored and status updated to `complete` (or `failed` on error).

6. `GET /api/scans/:id/report`
- Behavior: Returns scan and grouped findings per microservice. The server logs a warning if any finding's `scanId` does not match the requested scan — a diagnostic check for cross-contamination.

---

Storage & Persistence

- Default: `MemStorage` in `server/storage.ts`. It stores scans and findings in memory (Maps) and logs actions. This is intended for development or ephemeral runs.
- Production: The project contains Drizzle schema declarations (`shared/schema.ts`) and `drizzle-kit` in `devDependencies`. To persist data, implement a storage backend that writes to the database using Drizzle or adapt `MemStorage` to a DB-backed implementation.

---

Frontend (client) — behavior and routes

- App entry: `client/src/main.tsx` mounts `App`.
- Routes in `App.tsx`: `/` => Dashboard, `/scan` => Scan page, `/report/:id` => Report page.
- Data fetching: `@tanstack/react-query` (`queryClient`) used to fetch scans, start scans and poll for scan status.
- Upload flow: the UI uploads an APK to `POST /api/scans/upload` and then calls `POST /api/scans/:id/start`.
- Report page: fetches `/api/scans/:id/report` and renders findings grouped by microservice.

---

Dependencies (high-level from `package.json`)

- Runtime (server + client): `express`, `multer`, `react`, `react-dom`, `vite`, `tsx`, `drizzle-orm`, `zod`, `@tanstack/react-query`, `passport` (unused for auth in our read), `memorystore`, `ws`.
- Dev: `vite`, `typescript`, `esbuild`, `tailwindcss` and tooling for Replit.
- Python: core microservices rely only on Python stdlib (`zipfile`, `re`, `json`) and the internal `config_loader.py`. There are no explicit Python third-party requirements in repository; if you add external libs, include `requirements.txt`.

---

Run & Development instructions (local)

Prerequisites
- Node.js (recommended >= 18)
- npm
- Python (on Windows the repo expects `py` or `python3`; `server/microservices/python-runner.ts` chooses `py` when on `win32` unless `PYTHON_CMD` is set)
- Optional: PostgreSQL/Drizzle if you plan to enable DB persistence

Commands (from project root `projet_drizzbaby`):

1) Install Node deps

```powershell
npm install
```

2) Start in development (uses `tsx` to run TypeScript server directly and Vite dev integration)

```powershell
# On Windows PowerShell
$env:NODE_ENV = "development"; npx tsx server/index.ts
# Or use npm script
npm run dev
```

3) Python microservices
- The server will call Python microservices automatically when a scan is started. On Windows the runner will call `py <script> <apkPath>` by default.
- If you need to override the Python command set the env var `PYTHON_CMD`.

4) Build for production

```powershell
npm run build
npm run start   # starts compiled dist/index.js with NODE_ENV=production
```

5) Python virtualenv (recommended for microservice development & additional Python deps)

```powershell
python -m venv .venv
.venv\Scripts\Activate.ps1
# then, if you add third-party Python libs:
# pip install -r server/python_microservices/requirements.txt
```

---

Environment variables and configuration

- `PORT` — server port (default 5000)
- `NODE_ENV` — `development` or `production` (controls vite integration)
- `PYTHON_CMD` — optional override for Python command (e.g. `py`, `python`, or full path to interpreter)

---

Logging and debugging

- Request logging is implemented in `server/index.ts` middleware. API calls are logged with method, path, status and truncated response JSON for `/api/*` paths.
- Storage logs are emitted from `server/storage.ts` (create / retrieve / update operations).
- Route-level and scan processing logs are in `server/routes.ts` (scan processing start/completion, per-microservice counts).
- Python microservices print JSON results to `stdout`. Errors are printed to `stderr`.

Troubleshooting tips
- If a microservice fails, the Node runner returns an empty findings set but logs the error. Check the server console to see `Python microservice <script> failed: ...` messages.
- If scans look like they contain findings from other scans, check the server console: `server/routes.ts` warns if findings with wrong `scanId` are present.
- If uploads are rejected, ensure the uploaded file has `.apk` extension and is below the 100MB limit.

---

Testing strategy

- Unit tests: none present in repository by default. Add tests for validation logic and storage behavior.
- Integration test: upload a known APK (or a small crafted ZIP matching the pattern shapes) and start a scan. Observe the console logs and the report endpoint.
- Sample manual validation steps are available in `DEBUG_GUIDE.md` and `TERMINAL_LOG_GUIDE.md`.

---

Extending the system

- Add a new pattern: edit `server/python_microservices/config.json`, add object to appropriate array. Use `id`, `pattern` or `check_type`, `severity`, `cwe`, `title`, `description` and `fixSuggestion` fields.
- Add a new microservice: create a Python script in `server/python_microservices/` implementing the CLI contract (accept apk path, write JSON with `findings` array to stdout). Register it in `shared/microservices.ts` and the server will begin executing it on scans.
- Persist findings: implement a DB-backed `Storage` that conforms to the `IStorage` interface in `server/storage.ts` and wire it into `server/index.ts` instead of `MemStorage`.

---

Security considerations and production readiness

- `MemStorage` is in-memory and will not survive process restarts. For production use, switch to a persistent DB (Postgres) using the provided Drizzle schemas.
- Python microservices run as child processes. Validate inputs and be cautious if exposing this service in multi-tenant environments. Consider running microservices in isolated containers or processes with limited privileges.
- Limit upload size (already set to 100MB) and validate file types early. Consider virus scanning of uploaded APKs in production.
- Lock down the public API using authentication and RBAC if necessary.

---

Output format contract (microservices -> server)

- Each microservice MUST write valid JSON to stdout of the form:

```json
{ "findings": [ { "microservice": "<id>", "title": "...", "severity": "high|medium|low|critical|info", "cwe": "CWE-...", "description": "...", "affectedFiles": ["path/inside/apk"], "fixSuggestion": "...", "codeSnippet": "..." }, ... ] }
```

- The server will validate each finding with `insertFindingSchema` and will append `scanId` before persisting.

---

Where to look for behavior and to instrument for deeper insight

- `server/index.ts` — request middleware, logging, Vite integration logic (dev mode), server startup.
- `server/routes.ts` — high-level orchestration, scan lifecycle, microservice runner invocation, score computation.
- `server/microservices/python-runner.ts` — platform-aware Python invocation (`py` vs `python3`). Set `PYTHON_CMD` to alter behavior.
- `server/storage.ts` — in-memory persistence and logging. Replace this to add DB persistence.
- `server/python_microservices` — microservice logic; `config_loader.py` loads pattern config; `config.json` is the authoritative pattern repository.
- `shared/schema.ts` — DB and validation schema (Drizzle + Zod). Use this to keep server and DB schema in sync.

---

Recommended next steps (practical)

1. If you plan to run multiple scans in production, replace `MemStorage` with a persistent storage backed by Postgres using the `shared/schema.ts` definitions.
2. Add a `requirements.txt` listing any non-stdlib Python packages you plan to use in microservices; pin versions.
3. Add basic authentication to the API or run the service inside a private network.
4. Add tests for microservices (small unit tests that feed sample text and assert expected findings), and add an integration test that runs a microservice on a small example APK.
5. If cross-scan contamination appears, enable more verbose logging and run scans sequentially to reproduce the problem; check `uploads/` cleanup policies.

---

Files mentioned in this document (path references)
- `package.json`
- `server/index.ts`
- `server/routes.ts`
- `server/storage.ts`
- `server/microservices/python-runner.ts`
- `server/vite.ts`
- `server/python_microservices/config_loader.py`
- `server/python_microservices/config.json`
- `server/python_microservices/apk_scanner.py`
- `server/python_microservices/secret_hunter.py`
- `server/python_microservices/crypto_check.py`
- `server/python_microservices/network_inspector.py`
- `server/python_microservices/report_gen.py`
- `server/python_microservices/fix_suggest.py`
- `shared/microservices.ts`
- `shared/schema.ts`
- `client/src/main.tsx`
- `client/src/App.tsx`
- `uploads/` (runtime)
- `PATTERNS_CONFIGURATION_112.md`

---

Document metadata
- Generated: December 7, 2025
- Purpose: Single-file, thorough textual summary for engineers onboarding to `projet_drizzbaby`.

If you'd like, I can also:
- Add a shorter executive summary (one-page).
- Generate a checklist of steps to harden for production (DB migration, auth, containerization).
- Create example test APKs and a small harness to validate microservices automatically.

---

End of project overview.
