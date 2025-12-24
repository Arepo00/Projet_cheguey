# Architecture du projet — Diagramme et explication

Ce document contient un diagramme textuel (Mermaid) décrivant l'architecture complète de `projet_drizzbaby` et des notes explicatives. Le diagramme représente les composants principaux : frontend, serveur, orchestrateur Python, microservices, bases de données dédiées (per microservice), stockage d'artefacts et intégration CI.

> Note : Si votre rendu Markdown n'interprète pas Mermaid, le diagramme texte est toujours lisible en clair dans la section "Vue textuelle" plus bas.

---

## Diagramme (Mermaid)

```mermaid
flowchart TB
  subgraph Client
    Browser["Browser UI\n(Vite + React)"]
  end

  subgraph Server["Node/Express Server"]
    API[/API Routes (/api)\nupload, start, report/]
    Vite["Vite dev (dev mode)\nserve client"]
    Storage["Storage adapter\n(MemStorage or DB) "]
    Runner["Python Runner\n(spawn processes) "]
    ReportGenNode["ReportGen (Node)\n(Puppeteer, SARIF, PDF)"]
  end

  Browser -->|HTTP| API
  API --> Storage
  API --> Runner
  Runner -->|spawn| Microservices["Python Microservices (containerizable)"]
  Runner -->|reads config| Config["config.json\n(patterns)"]
  Microservices --> Config

  subgraph MicroservicesGroup["Microservices (one per role)"]
    direction TB
    MS1["APKScanner\n(apk_scanner.py)"]
    MS2["SecretHunter\n(secret_hunter.py)"]
    MS3["CryptoCheck\n(crypto_check.py)"]
    MS4["NetworkInspector\n(network_inspector.py)\n(mitmproxy sandbox optional)"]
    MS5["FixSuggest\n(fix_suggest.py)"]
    MS6["CIConnector\n(ci_connector.py)"]
    MS7["ReportGen Microservice\n(report_gen.py) - optional"]
  end

  Microservices -->|each writes to its own DB| DBs["DB per microservice\n(e.g. Postgres or SQLite)"]
  DBs -->|store findings & metadata| Storage

  MS1 --> DBs
  MS2 --> DBs
  MS3 --> DBs
  MS4 --> DBs
  MS5 --> DBs
  MS6 --> DBs
  MS7 --> DBs

  ReportGenNode --> Storage
  API --> ReportGenNode

  subgraph CI["CI / DevSecOps"]
    GHActions["GitHub Actions / GitLab CI\n(Docker build & scan)"]
    DockerReg["Docker Registry"]
  end

  CI -->|runs scanner images| DockerReg
  CI --> API
  MS1 ---|docker-compose per microservice| DockerCompose["docker-compose.yml\n(per microservice)"]
  MS2 --- DockerCompose
  MS3 --- DockerCompose
  MS4 --- DockerCompose
  MS5 --- DockerCompose
  MS6 --- DockerCompose

  note right of Microservices: "Each microservice is self-contained\nwith its own DB, Dockerfile and docker-compose"

```

---

## Vue textuelle détaillée (composants et flux)

- Client (Vite + React)
  - Pages principales : Dashboard, Scan Page, Report Page.
  - Upload d'un APK → POST `/api/scans/upload`.
  - Démarrage d'un scan → POST `/api/scans/:id/start`.
  - Consultation du rapport → GET `/api/scans/:id/report`.

- Serveur Node/Express
  - `server/index.ts` : middleware de logging, configuration Vite en dev, démarrage HTTP.
  - `server/routes.ts` : routes API, orchestration du scan : appelle le Runner, valide et persiste les résultats.
  - `server/storage.ts` : implémentation de stockage (actuellement `MemStorage`), doit être remplacée par un adaptateur DB par production.
  - `server/microservices/python-runner.ts` : exécute les scripts Python (ex: `py apk_scanner.py <apk>`), parse le JSON retourné.

- Python microservices (chaque service doit être indépendant)
  - `apk_scanner.py` : extrait `AndroidManifest.xml`, détecte `debuggable`, `allowBackup`, permissions dangereuses, components exportés. (Doit idéalement utiliser Androguard / apktool et stocker métadonnées localement.)
  - `secret_hunter.py` : recherche secrets via regex/YARA/gitleaks.
  - `crypto_check.py` : scans pour mauvais usages cryptographiques (MD5, AES/ECB, IV statique, etc.).
  - `network_inspector.py` : détecte endpoints HTTP, TLS faibles; peut être étendu pour le MITM dynamique via mitmproxy + émulateur.
  - `fix_suggest.py` : génère suggestions et patchs basés sur MASVS rules.
  - `ci_connector.py` : expose intégration CI et fournit templates pour GitHub Actions/GitLab.

- Bases de données par microservice (architecture demandée)
  - Chaque microservice possède sa propre base (Postgres recommandé en prod, SQLite pour dev).
  - Schéma typique : `findings`, `metadata`/`apk_metadata`, `patterns` (optionnel), `migrations`.
  - Avantage : isolation des charges, indépendance des migrations et backup/restore par service.

- ReportGen
  - Agrège les résultats (depuis les DB locales ou via endpoints push), génère JSON normalisé, SARIF et PDF (via Puppeteer).
  - Peut être implémenté en Node (comme composant du serveur) ou en microservice séparé, exposant endpoint `/api/results` pour ingestion.

- CI / Docker
  - Chaque microservice contient : `Dockerfile`, `docker-compose.yml` (microservice + its DB), `.env.example`.
  - CI (GitHub Actions / GitLab) : utilise images Docker pour exécuter scans, récupère SARIF et artifacts, déclenche scans sur PR/push.

---

## Notes d'implémentation et recommandations

- Communication entre services
  - Recommandé : push results → ReportGen (microservice POST `/ingest`), puis ReportGen stocke et normalise.
  - Alternative : ReportGen pull → ReportGen interroge chaque microservice DB via API.

- Persistance
  - Pour conformité : remplacer `MemStorage` par un adaptateur DB (ou laisser MemStorage pour dev). Chaque microservice doit gérer sa propre DB et exposer un `health` et `results` API.

- Conteneurisation
  - Fournir un `docker-compose.yml` pour chaque microservice (ex：`server/python_microservices/apk_scanner/docker-compose.yml`) qui lève le service + Postgres + volume.

- Sécurité
  - Protéger endpoints, ne pas exposer DB hors réseau privé, stocker credentials dans secrets
  - Isoler l'exécution des microservices dans des containers avec limites CPU/mémoire

- Observabilité
  - Exposer `/health` et logs JSON ; ajouter métriques si nécessaire.

---

## Exemple d'artefacts à générer automatiquement

- `docker-compose.apkscanner.yml` (apk_scanner + postgres)
- `Dockerfile` pour chaque microservice (Python image) et `requirements.txt`
- `migrations/init_db.py` pour chaque microservice
- `.github/workflows/mobilesec-scan.yml` template

---

## Prochaine étape proposée

- Voulez-vous que je génère automatiquement les `Dockerfile` + `docker-compose.yml` + `init_db` pour un microservice d'abord (par ex. `apk_scanner`), puis reproduise pour les autres ?

---

Fin du document.
