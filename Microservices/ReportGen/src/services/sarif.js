function sarifLevel(sev) {
  switch (sev) {
    case "CRITICAL":
    case "HIGH": return "error";
    case "MEDIUM": return "warning";
    case "LOW":
    case "INFO":
    default: return "note";
  }
}

export function buildSarif(report) {
  const rulesMap = new Map();

  for (const f of report.findings_list || []) {
    if (!rulesMap.has(f.id)) {
      rulesMap.set(f.id, {
        id: f.id,
        name: f.title,
        shortDescription: { text: f.title },
        fullDescription: { text: f.recommendation || f.title },
        defaultConfiguration: { level: sarifLevel(f.severity) },
        properties: { source: f.source, severity: f.severity }
      });
    }
  }

  const results = (report.findings_list || []).map(f => ({
    ruleId: f.id,
    level: sarifLevel(f.severity),
    message: {
      text: `${f.title} [source=${f.source}]`
    },
    properties: {
      evidence: f.evidence || {},
      recommendation: f.recommendation || ""
    }
  }));

  return {
    $schema: "https://json.schemastore.org/sarif-2.1.0.json",
    version: "2.1.0",
    runs: [
      {
        tool: {
          driver: {
            name: "MobileSec-MS ReportGen",
            version: "1.0.0",
            rules: Array.from(rulesMap.values())
          }
        },
        results
      }
    ]
  };
}
