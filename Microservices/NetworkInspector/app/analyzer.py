import json
import re
from typing import Any, Dict, List, Tuple, Optional

from .utils import safe_preview

def _load_json(path: str) -> Dict[str, Any]:
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f)

def compile_leak_regex(leak_cfg: Dict[str, Any]) -> List[Tuple[str, str, str, re.Pattern]]:
    """
    Returns list of (id, title, severity, compiled_regex)
    """
    items = []
    for r in leak_cfg.get("rules", []):
        rid = r.get("id", "NI-LEAK-XXX")
        title = r.get("title", "Sensitive data pattern")
        severity = r.get("severity", "MEDIUM")
        pattern = r.get("pattern", "")
        flags = 0
        if r.get("ignore_case", True):
            flags |= re.IGNORECASE
        try:
            items.append((rid, title, severity, re.compile(pattern, flags)))
        except re.error:
            # ignore broken regex
            continue
    return items

def analyze_flows(
    flows: List[Dict[str, Any]],
    header_rules_path: str,
    tls_rules_path: str,
    leak_patterns_path: str,
) -> List[Dict[str, Any]]:
    header_cfg = _load_json(header_rules_path)
    tls_cfg = _load_json(tls_rules_path)
    leak_cfg = _load_json(leak_patterns_path)

    leak_res = compile_leak_regex(leak_cfg)

    findings: List[Dict[str, Any]] = []

    # TLS weak versions/ciphers
    weak_tls = set(tls_cfg.get("weak_tls_versions", ["TLSv1", "TLSv1.1"]))
    weak_cipher_keywords = tls_cfg.get("weak_cipher_keywords", ["RC4", "3DES", "DES", "NULL", "EXPORT"])

    required_headers = header_cfg.get("required_response_headers_https", [])
    recommended_headers = header_cfg.get("recommended_response_headers_https", [])

    for f in flows:
        req = f.get("request", {})
        resp = f.get("response", {})
        conn = f.get("connection", {})
        url = req.get("url", "")
        scheme = req.get("scheme", "")
        host = req.get("host", "")
        method = req.get("method", "")
        path = req.get("path", "")
        flow_id = f.get("flow_id")

        # 1) HTTP cleartext
        if scheme.lower() == "http":
            findings.append({
                "id": "NI-NET-001",
                "title": "Communication HTTP en clair détectée",
                "severity": "HIGH",
                "evidence": {
                    "flow_id": flow_id,
                    "method": method,
                    "url": safe_preview(url, 300),
                    "host": host,
                },
                "recommendation": "Forcer HTTPS (TLS) pour toutes les communications. Bloquer HTTP via Network Security Config (Android) et redirections serveur.",
            })

        # 2) TLS checks (si https)
        tls_version = conn.get("tls_version")
        cipher = conn.get("cipher", "")

        if scheme.lower() == "https":
            if tls_version and tls_version in weak_tls:
                findings.append({
                    "id": "NI-TLS-001",
                    "title": f"Version TLS faible détectée ({tls_version})",
                    "severity": "HIGH",
                    "evidence": {"flow_id": flow_id, "host": host, "tls_version": tls_version},
                    "recommendation": "Désactiver TLS 1.0/1.1 côté serveur. Utiliser TLS 1.2+ (idéalement TLS 1.3) avec suites de chiffrement modernes.",
                })

            if cipher:
                for kw in weak_cipher_keywords:
                    if kw.lower() in cipher.lower():
                        findings.append({
                            "id": "NI-TLS-002",
                            "title": "Suite de chiffrement potentiellement faible détectée",
                            "severity": "MEDIUM",
                            "evidence": {"flow_id": flow_id, "host": host, "cipher": cipher},
                            "recommendation": "Mettre à jour la configuration TLS serveur (désactiver RC4/3DES/DES/NULL/EXPORT). Préférer AES-GCM/CHACHA20-POLY1305.",
                        })
                        break

        # 3) Headers HTTPS (HSTS, CSP, etc.) si on a une réponse
        resp_headers = (resp.get("headers") or {})
        if scheme.lower() == "https" and resp_headers:
            missing_required = []
            for h in required_headers:
                if h.lower() not in {k.lower() for k in resp_headers.keys()}:
                    missing_required.append(h)

            if missing_required:
                findings.append({
                    "id": "NI-HDR-001",
                    "title": "En-têtes de sécurité manquants (HTTPS)",
                    "severity": "MEDIUM",
                    "evidence": {"flow_id": flow_id, "host": host, "missing": missing_required},
                    "recommendation": "Ajouter des en-têtes de sécurité côté serveur (ex: Strict-Transport-Security, X-Content-Type-Options, X-Frame-Options, etc.).",
                })

            missing_reco = []
            for h in recommended_headers:
                if h.lower() not in {k.lower() for k in resp_headers.keys()}:
                    missing_reco.append(h)
            if missing_reco:
                findings.append({
                    "id": "NI-HDR-002",
                    "title": "En-têtes recommandés absents (amélioration)",
                    "severity": "LOW",
                    "evidence": {"flow_id": flow_id, "host": host, "missing": missing_reco},
                    "recommendation": "Envisager CSP/Permissions-Policy/Referrer-Policy pour durcir la surface d’attaque.",
                })

        # 4) Leak patterns: URL / headers / body preview
        query = req.get("query", "")
        req_headers = (req.get("headers") or {})
        req_body = req.get("body_preview", "") or ""
        resp_body = resp.get("body_preview", "") or ""

        haystacks = [
            ("url", url),
            ("query", query),
            ("req_headers", json.dumps(req_headers, ensure_ascii=False)),
            ("req_body", req_body),
            ("resp_body", resp_body),
        ]

        for (rid, title, severity, creg) in leak_res:
            for where, text in haystacks:
                if not text:
                    continue
                m = creg.search(text)
                if m:
                    findings.append({
                        "id": rid,
                        "title": title,
                        "severity": severity,
                        "evidence": {
                            "flow_id": flow_id,
                            "host": host,
                            "where": where,
                            "match_preview": safe_preview(m.group(0), 120),
                            "url": safe_preview(url, 200),
                            "path": path,
                        },
                        "recommendation": leak_cfg.get("default_recommendation",
                            "Retirer les secrets du trafic réseau. Utiliser des tokens courts, éviter l’URL pour les secrets, activer redaction côté logs, et stocker côté serveur."),
                    })
                    break

    return findings
