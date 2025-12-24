function normalizeSeverity(s) {
  const v = (s || "").toUpperCase();
  if (["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"].includes(v)) return v;
  return "INFO";
}

export function aggregateFindings({ parent_scan_id, package: pkg, raw }) {
  const findings = [];

  for (const [source, payload] of Object.entries(raw || {})) {
    if (!payload || typeof payload !== "object") continue;
    const list = payload.findings_list || payload.findings || [];
    if (!Array.isArray(list)) continue;

    for (const f of list) {
      findings.push({
        id: f.id || `${source}-UNKNOWN`,
        title: f.title || "Finding",
        severity: normalizeSeverity(f.severity),
        source,
        evidence: f.evidence || {},
        recommendation: f.recommendation || "",
      });
    }
  }

  // petite stats
  const stats = { CRITICAL: 0, HIGH: 0, MEDIUM: 0, LOW: 0, INFO: 0 };
  for (const f of findings) stats[f.severity] = (stats[f.severity] || 0) + 1;

  return {
    report_id: null, // rempli côté route si besoin
    parent_scan_id,
    package: pkg,
    generated_at: Math.floor(Date.now() / 1000),
    findings_list: findings,
    stats,
    sources: Object.keys(raw || {})
  };
}
