# 🛡️ MobileSec-MS

**Plateforme d'analyse d' APK en microservices** pour l’analyse de sécurité des applications Android (**OWASP MASVS / MSTG**) :  
SAST + secrets + crypto + dynamique réseau + IA (anomalies) + génération de rapports (**PDF/JSON/SARIF**) + intégration CI/CD.

MobileSec-MS automatise un workflow complet :

**Upload APK → Analyses (statiques/dynamiques) → Triage & Fix → Reporting**

---

## 🎯 Objectif

Les audits mobiles manuels sont **lents**, **hétérogènes** (plusieurs outils), et difficiles à intégrer dans un pipeline **DevSecOps**.  
**MobileSec-MS** fournit une architecture microservices **conteneurisée** et **reproductible**, alignée sur **OWASP MASVS / CWE**, capable de produire des livrables **industrie** (**SARIF**, **PDF**, **JSON**).

---

## 🧩 Microservices

Chaque service est autonome, expose au minimum `GET /health` et des routes de scan/résultats, et persiste ses résultats (**SQLite + volumes**).

### Services principaux (actuels dans le compose)

| Service | Rôle | Port hôte → conteneur | Stockage |
|---|---|---:|---|
| **APKScanner** | Analyse statique APK : manifest, permissions, composants exportés, flags (debuggable/backup), métadonnées | `8001 → 8000` | SQLite + data volume |
| **SecretHunter** | Détection de secrets : regex / gitleaks / YARA, dédup, scoring | `8002 → 8000` | SQLite + règles |
| **CryptoCheck** | Détection crypto faible : MD5/DES, ECB, RNG faible, mapping CWE/MASVS | `8003 → 8000` | SQLite + règles |
| **NetworkInspector (+ mitmproxy)** | Analyse dynamique réseau : interception flows, TLS/headers/leaks, snapshots | `8004 → 8000` + proxy `8080` | SQLite + `flows.jsonl` |
| **NetAnomalyAI** | IA : détection d’anomalies comportementales sur `flows.jsonl` (IsolationForest + seuil + heuristiques) | `8008 → 8000` | SQLite + modèle (joblib) |
| **FixSuggest** | Suggestions de correction : recommandations MASVS + patchs/diff | `8006 → 8000` | SQLite + règles YAML |
| **CIConnector** | Génération pipelines CI/CD (GitHub Actions / GitLab CI) | `8007 → 8000` | Stateless + accès workspace |
| **ReportGen** | Agrégation multi-services + génération **PDF/JSON/SARIF** | `8005 → 8000` | reports volume |

---

## 🏗️ Architecture technique

- Microservices **FastAPI / Node** isolés (**Docker**)
- Communication **HTTP interne Docker** (URLs de services)
- Persistance locale par service via **SQLite**
- Analyse réseau dynamique basée sur **mitmproxy** (`mitmdump` + addon `json_logger`)
- IA encapsulée dans **NetAnomalyAI** (**versionnage du modèle**)

---

## 🧠 Focus : NetAnomalyAI (IA anomalies réseau)

**But :** détecter des comportements réseau suspects non couverts par des règles statiques  
(endpoints rares, patterns atypiques, bursts, etc.) à partir des flows capturés par **mitmproxy**.

### Artefacts du modèle

Dans `NetAnomalyAI/models/<version>/` :

- `model.joblib` : modèle IsolationForest entraîné  
- `scaler.joblib` : StandardScaler utilisé lors de l’entraînement  
- `thresholds.json` : seuil calibré (target FPR)  
- `featurizer.json` : définition des features / pipeline  
- `vectorizer.joblib` *(optionnel)* : si features texte (ngrams, TF-IDF, etc.)

### Remarque importante (seuil)

Le score IsolationForest dépend du **seuil**.  
Tu peux ajuster via l’API :

- `threshold_override` *(ex : `0.05`)* pour être plus “agressif” et remonter plus d’anomalies

---

## 🧰 Technologies utilisées

### Backend / Microservices
- Python **FastAPI**, Uvicorn
- Node.js (**ReportGen**)
- **scikit-learn**, numpy, **joblib** (**NetAnomalyAI**)

### Analyse sécurité
- apktool / parsing manifest (**APKScanner**)
- gitleaks / regex / YARA (**SecretHunter**)
- règles crypto (**CryptoCheck**)
- **mitmproxy / mitmdump** (**NetworkInspector**)

### Data & DevOps
- Docker, **Docker Compose**
- SQLite (par service)
- Volumes persistants (**data**, **models**, **reports**)

### Standards & Outputs
- OWASP **MASVS**, **MSTG**
- Mapping **CWE**
- Export **SARIF** (CI compatible)

---

## ✅ Fonctionnalités principales

- 🔍 Analyse statique APK (manifest, permissions, composants exportés)
- 🧬 Secrets scanning (regex / gitleaks / YARA)
- 🔐 Crypto weak detection (MD5, ECB, RNG faible…)
- 🌐 Analyse dynamique réseau via mitmproxy + snapshots
- 🧠 IA d’anomalies réseau (NetAnomalyAI)
- 🛠️ Suggestions de fix alignées MASVS
- 📄 Génération de rapports **PDF / JSON / SARIF**
- 🔁 Export CI/CD **GitHub Actions / GitLab CI**

## Vidéo Démo
Version courte : https://drive.google.com/file/d/1AL2zNIPYgdwd-hXS-_Nm7QiFpQSeM94t/view?usp=sharing
Version Longue : https://drive.google.com/file/d/1RIKVkPiDHm1l5AvJMHvrUDsIDWY5QzKz/view

