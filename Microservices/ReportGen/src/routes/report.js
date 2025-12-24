import { Router } from "express";
import { v4 as uuidv4 } from "uuid";
import path from "path";
import fs from "fs";

import { config } from "../config.js";
import { fetchAllScans } from "../services/fetchScans.js";
import { aggregateFindings } from "../services/aggregate.js";
import { buildSarif } from "../services/sarif.js";
import { renderPdf } from "../services/renderPdf.js";

const router = Router();

router.post("/report", async (req, res) => {
  /**
   * Body attendu (exemple):
   * {
   *   "parent_scan_id": 0,
   *   "package": "com.example.app",
   *   "scans": {
   *     "apk_scanner": 12,
   *     "secret_hunter": 8,
   *     "crypto_check": 5,
   *     "network_inspector": 3
   *   }
   * }
   */
  try {
    const { parent_scan_id, package: pkg, scans } = req.body || {};
    if (parent_scan_id === undefined || !pkg || !scans) {
      return res.status(400).json({
        error: "Bad request",
        expected: { parent_scan_id: 0, package: "com.x", scans: { apk_scanner: 1, secret_hunter: 2, crypto_check: 3, network_inspector: 4 } }
      });
    }

    const reportId = uuidv4();
    const reportDir = path.join(config.dataDir, "reports", reportId);
    fs.mkdirSync(reportDir, { recursive: true });

    // 1) fetch results from microservices
    const raw = await fetchAllScans(scans);

    // 2) aggregate
    const aggregated = aggregateFindings({ parent_scan_id, package: pkg, raw });

    // 3) JSON
    const jsonPath = path.join(reportDir, "report.json");
    fs.writeFileSync(jsonPath, JSON.stringify(aggregated, null, 2), "utf-8");

    // 4) SARIF
    const sarif = buildSarif(aggregated);
    const sarifPath = path.join(reportDir, "report.sarif");
    fs.writeFileSync(sarifPath, JSON.stringify(sarif, null, 2), "utf-8");

    // 5) PDF (Puppeteer)
    const pdfPath = path.join(reportDir, "report.pdf");
    await renderPdf(aggregated, pdfPath);

    return res.json({
      report_id: reportId,
      files: {
        json: `/report/${reportId}?format=json`,
        sarif: `/report/${reportId}?format=sarif`,
        pdf: `/report/${reportId}?format=pdf`
      },
      meta: {
        parent_scan_id,
        package: pkg,
        findings_count: aggregated.findings_list.length
      }
    });
  } catch (e) {
    console.error(e);
    return res.status(500).json({ error: "internal_error", detail: String(e?.message || e) });
  }
});

router.get("/report/:reportId", (req, res) => {
  const { reportId } = req.params;
  const format = (req.query.format || "json").toString().toLowerCase();

  const reportDir = path.join(config.dataDir, "reports", reportId);

  const map = {
    json: { file: "report.json", type: "application/json" },
    sarif: { file: "report.sarif", type: "application/json" },
    pdf: { file: "report.pdf", type: "application/pdf" }
  };

  const entry = map[format];
  if (!entry) return res.status(400).json({ error: "format must be json|sarif|pdf" });

  const full = path.join(reportDir, entry.file);
  if (!fs.existsSync(full)) return res.status(404).json({ error: "not_found", report_id: reportId });

  res.setHeader("Content-Type", entry.type);
  return res.sendFile(full);
});

export default router;
