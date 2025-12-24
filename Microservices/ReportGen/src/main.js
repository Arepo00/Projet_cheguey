// ReportGen/src/main.js
import express from "express";
import path from "path";
import fs from "fs/promises";
import { existsSync } from "fs";
import crypto from "crypto";

import { fetchScanOrThrow, SERVICES } from "./services.js";
import { ensureDir, writeJson, readJson, safeStat, listDirs, rmrf } from "./storage.js";
import { buildSarif } from "./sarif.js";
import { renderPdf } from "./pdf.js";
import { cleanupOldReports } from "./cleanup.js";

const app = express();
app.use(express.json({ limit: "2mb" }));

const PORT = parseInt(process.env.PORT || "8000", 10);
const DATA_DIR = process.env.DATA_DIR || "/app/data";
const REPORTS_DIR = process.env.REPORTS_DIR || path.join(DATA_DIR, "reports");

const REPORT_TTL_HOURS = parseInt(process.env.REPORT_TTL_HOURS || "168", 10); // 7 jours
const CLEANUP_INTERVAL_MIN = parseInt(process.env.CLEANUP_INTERVAL_MIN || "60", 10);
const ADMIN_TOKEN = process.env.ADMIN_TOKEN || ""; // si vide => endpoint cleanup non protégé (pas recommandé)

function nowEpoch() {
  return Math.floor(Date.now() / 1000);
}

function isNonEmptyString(v) {
  return typeof v === "string" && v.trim().length > 0;
}

function isPositiveInt(n) {
  return Number.isInteger(n) && n > 0;
}

function asIntOrNull(v) {
  const n = Number(v);
  return Number.isFinite(n) ? n : null;
}

// --------- Health
app.get("/health", async (_req, res) => {
  res.json({ ok: true, service: "ReportGen", reports_dir: REPORTS_DIR });
});

// --------- POST /report
// body:
// {
//   "parent_scan_id": 0,
//   "package": "com.test",
//   "scans": { "apk_scanner": 1, "secret_hunter": 2, "crypto_check": 3, "network_inspector": 8 }
// }
app.post("/report", async (req, res) => {
  try {
    const parent_scan_id = asIntOrNull(req.body?.parent_scan_id);
    const pkg = req.body?.package;
    const scans = req.body?.scans;

    // ---- Validation input
    if (parent_scan_id === null || parent_scan_id < 0) {
      return res.status(400).json({ error: "Invalid parent_scan_id (must be >= 0)" });
    }
    if (!isNonEmptyString(pkg)) {
      return res.status(400).json({ error: "Invalid package (non-empty string required)" });
    }
    if (!scans || typeof scans !== "object") {
      return res.status(400).json({ error: "Invalid scans object" });
    }

    const scanEntries = Object.entries(scans);
    if (scanEntries.length === 0) {
      return res.status(400).json({ error: "scans must contain at least one service id" });
    }

    // ---- Validate services + ids
    for (const [serviceName, scanIdRaw] of scanEntries) {
      if (!SERVICES[serviceName]) {
        return res.status(400).json({
          error: `Unknown service '${serviceName}'`,
          allowed: Object.keys(SERVICES),
        });
      }
      const scanId = asIntOrNull(scanIdRaw);
      if (scanId === null || !isPositiveInt(scanId)) {
        return res.status(400).json({
          error: `Invalid scan_id for '${serviceName}' (must be positive integer)`,
          service: serviceName,
          scan_id: scanIdRaw,
        });
      }
    }

    // ---- Create report id + folder
    const report_id = crypto.randomUUID();
    const reportDir = path.join(REPORTS_DIR, report_id);
    await ensureDir(reportDir);

    // ---- Fetch all scans with timeouts + robust errors
    const fetched = {};
    const fetchErrors = [];

    for (const [serviceName, scanIdRaw] of scanEntries) {
      const scanId = Number(scanIdRaw);
      try {
        const scanJson = await fetchScanOrThrow(serviceName, scanId);
        // si le microservice répond {error:"not found"} => on le traite comme erreur
        if (scanJson?.error === "not found" || scanJson?.meta?.status === "FAILED") {
          throw new Error(
            scanJson?.error === "not found"
              ? "scan_id not found"
              : `scan status FAILED: ${scanJson?.meta?.error || "unknown"}`
          );
        }
        fetched[serviceName] = scanJson;
      } catch (e) {
        fetchErrors.push({
          service: serviceName,
          scan_id: scanId,
          error: String(e?.message || e),
        });
      }
    }

    if (fetchErrors.length > 0) {
      // On garde un message clair sur ce qui manque
      return res.status(400).json({
        error: "One or more scans cannot be fetched/validated",
        details: fetchErrors,
      });
    }

    // ---- Aggregate findings
    const findings = [];
    for (const [serviceName, scanJson] of Object.entries(fetched)) {
      const list = Array.isArray(scanJson?.findings_list) ? scanJson.findings_list : [];
      for (const f of list) {
        findings.push({
          ...f,
          _service: serviceName,
          _scan_id: scanJson?.scan_id ?? null,
        });
      }
    }

    const meta = {
      report_id,
      parent_scan_id,
      package: pkg,
      created_at: nowEpoch(),
      findings_count: findings.length,
      scans: Object.fromEntries(scanEntries.map(([s, id]) => [s, Number(id)])),
    };

    // ---- Build JSON report
    const jsonReport = {
      ...meta,
      results: fetched,
      findings_list: findings,
    };

    // ---- Build SARIF
    const sarifReport = buildSarif(jsonReport);

    // ---- Build PDF (HTML -> Puppeteer)
    const pdfPath = path.join(reportDir, `report_${report_id}.pdf`);
    await renderPdf(jsonReport, pdfPath);

    // ---- Persist all
    await writeJson(path.join(reportDir, "meta.json"), meta);
    await writeJson(path.join(reportDir, "report.json"), jsonReport);
    await writeJson(path.join(reportDir, "report.sarif.json"), sarifReport);

    // ---- Return links (same style you already have)
    res.json({
      report_id,
      files: {
        json: `/report/${report_id}?format=json`,
        sarif: `/report/${report_id}?format=sarif`,
        pdf: `/report/${report_id}?format=pdf`,
      },
      meta: {
        parent_scan_id,
        package: pkg,
        findings_count: findings.length,
      },
    });
  } catch (e) {
    console.error("[ReportGen] /report error:", e);
    res.status(500).json({ error: "Internal error", details: String(e?.message || e) });
  }
});

// --------- GET /report/:id?format=json|sarif|pdf
app.get("/report/:id", async (req, res) => {
  try {
    const reportId = req.params.id;
    const format = (req.query.format || "json").toString().toLowerCase();

    const reportDir = path.join(REPORTS_DIR, reportId);
    const metaPath = path.join(reportDir, "meta.json");
    const metaStat = await safeStat(metaPath);
    if (!metaStat) {
      return res.status(404).json({ error: "not found", report_id: reportId });
    }

    if (format === "json") {
      const filePath = path.join(reportDir, "report.json");
      if (!existsSync(filePath)) return res.status(404).json({ error: "missing report.json" });

      res.setHeader("Content-Type", "application/json; charset=utf-8");
      res.setHeader("Content-Disposition", `attachment; filename="report_${reportId}.json"`);
      return res.sendFile(filePath);
    }

    if (format === "sarif") {
      const filePath = path.join(reportDir, "report.sarif.json");
      if (!existsSync(filePath)) return res.status(404).json({ error: "missing report.sarif.json" });

      res.setHeader("Content-Type", "application/json; charset=utf-8");
      res.setHeader("Content-Disposition", `attachment; filename="report_${reportId}.sarif.json"`);
      return res.sendFile(filePath);
    }

    if (format === "pdf") {
      const filePath = path.join(reportDir, `report_${reportId}.pdf`);
      if (!existsSync(filePath)) return res.status(404).json({ error: "missing pdf" });

      res.setHeader("Content-Type", "application/pdf");
      res.setHeader("Content-Disposition", `attachment; filename="report_${reportId}.pdf"`);
      return res.sendFile(filePath);
    }

    return res.status(400).json({ error: "Invalid format", allowed: ["json", "sarif", "pdf"] });
  } catch (e) {
    console.error("[ReportGen] GET /report/:id error:", e);
    res.status(500).json({ error: "Internal error", details: String(e?.message || e) });
  }
});

// --------- POST /reports/cleanup  (admin)
app.post("/reports/cleanup", async (req, res) => {
  try {
    const token = (req.headers["x-admin-token"] || "").toString();
    if (ADMIN_TOKEN && token !== ADMIN_TOKEN) {
      return res.status(401).json({ error: "Unauthorized" });
    }

    const olderHours = asIntOrNull(req.body?.older_than_hours) ?? REPORT_TTL_HOURS;
    const olderThanSeconds = olderHours * 3600;

    const result = await cleanupOldReports(REPORTS_DIR, olderThanSeconds);
    res.json({ ok: true, ...result });
  } catch (e) {
    console.error("[ReportGen] cleanup error:", e);
    res.status(500).json({ error: "Internal error", details: String(e?.message || e) });
  }
});

// --------- Startup init + periodic cleanup
async function startup() {
  await ensureDir(REPORTS_DIR);

  // cleanup once at boot
  try {
    const r = await cleanupOldReports(REPORTS_DIR, REPORT_TTL_HOURS * 3600);
    console.log(`[ReportGen] startup cleanup: deleted=${r.deleted} kept=${r.kept}`);
  } catch (e) {
    console.warn("[ReportGen] startup cleanup failed:", e?.message || e);
  }

  // periodic cleanup
  setInterval(async () => {
    try {
      const r = await cleanupOldReports(REPORTS_DIR, REPORT_TTL_HOURS * 3600);
      console.log(`[ReportGen] periodic cleanup: deleted=${r.deleted} kept=${r.kept}`);
    } catch (e) {
      console.warn("[ReportGen] periodic cleanup failed:", e?.message || e);
    }
  }, CLEANUP_INTERVAL_MIN * 60 * 1000);

  app.listen(PORT, () => {
    console.log(`[ReportGen] listening on 0.0.0.0:${PORT}`);
    console.log(`[ReportGen] reports dir: ${REPORTS_DIR}`);
  });
}

startup();
