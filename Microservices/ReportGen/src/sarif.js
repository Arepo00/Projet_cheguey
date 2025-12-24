// ReportGen/src/sarif.js
export function buildSarif(jsonReport) {
  const findings = Array.isArray(jsonReport?.findings_list) ? jsonReport.findings_list : [];

  // SARIF minimal mais propre
  const rulesMap = new Map();

  for (const f of findings) {
    const ruleId = f?.id || "UNKNOWN";
    if (!rulesMap.has(ruleId)) {
      rulesMap.set(ruleId, {
        id: ruleId,
        name: f?.title || ruleId,
        shortDescription: { text: f?.title || ruleId },
        fullDescription: { text: f?.recommendation || "" },
        properties: {
          tags: [f?._service || "unknown"],
          severity: f?.severity || "UNKNOWN",
        },
      });
    }
  }

  const results = findings.map((f) => {
    const ruleId = f?.id || "UNKNOWN";
    const msg = `[${f?._service || "service"}] ${f?.title || ruleId}`;
    return {
      ruleId,
      level: severityToSarifLevel(f?.severity),
      message: { text: msg },
      properties: {
        service: f?._service || null,
        scan_id: f?._scan_id ?? null,
        evidence: f?.evidence ?? null,
        recommendation: f?.recommendation ?? null,
      },
    };
  });

  return {
    $schema: "https://json.schemastore.org/sarif-2.1.0.json",
    version: "2.1.0",
    runs: [
      {
        tool: {
          driver: {
            name: "MobileSec-MS ReportGen",
            informationUri: "https://example.local",
            rules: Array.from(rulesMap.values()),
          },
        },
        results,
      },
    ],
  };
}

function severityToSarifLevel(sev) {
  const s = String(sev || "").toUpperCase();
  if (s === "HIGH" || s === "CRITICAL") return "error";
  if (s === "MEDIUM") return "warning";
  if (s === "LOW") return "note";
  return "none";
}
