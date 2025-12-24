// ReportGen/src/pdf.js
import fs from "fs/promises";
import path from "path";
import puppeteer from "puppeteer";

function escapeHtml(s) {
  return String(s || "")
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

function buildHtml(jsonReport) {
  const meta = jsonReport || {};
  const findings = Array.isArray(meta.findings_list) ? meta.findings_list : [];

  const rows = findings
    .map(
      (f) => `
      <tr>
        <td>${escapeHtml(f._service)}</td>
        <td>${escapeHtml(f.id)}</td>
        <td>${escapeHtml(f.severity)}</td>
        <td>${escapeHtml(f.title)}</td>
        <td style="white-space:pre-wrap">${escapeHtml(JSON.stringify(f.evidence || {}, null, 2))}</td>
        <td style="white-space:pre-wrap">${escapeHtml(f.recommendation || "")}</td>
      </tr>`
    )
    .join("\n");

  return `
<!doctype html>
<html>
<head>
  <meta charset="utf-8"/>
  <title>Security Report</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; }
    h1 { margin: 0 0 6px 0; }
    .meta { margin-bottom: 18px; color: #333; }
    table { width: 100%; border-collapse: collapse; font-size: 12px; }
    th, td { border: 1px solid #ddd; padding: 8px; vertical-align: top; }
    th { background: #f3f3f3; text-align: left; }
    .badge { display:inline-block; padding:2px 8px; border-radius: 999px; background:#eee; }
  </style>
</head>
<body>
  <h1>MobileSec-MS — Rapport de sécurité</h1>
  <div class="meta">
    <div><b>Report ID:</b> ${escapeHtml(meta.report_id)}</div>
    <div><b>Package:</b> ${escapeHtml(meta.package)}</div>
    <div><b>Parent Scan:</b> ${escapeHtml(meta.parent_scan_id)}</div>
    <div><b>Findings:</b> <span class="badge">${escapeHtml(meta.findings_count)}</span></div>
  </div>

  <h2>Détails des findings</h2>
  <table>
    <thead>
      <tr>
        <th>Service</th>
        <th>Rule</th>
        <th>Severity</th>
        <th>Title</th>
        <th>Evidence</th>
        <th>Recommendation</th>
      </tr>
    </thead>
    <tbody>
      ${rows || `<tr><td colspan="6">Aucun finding</td></tr>`}
    </tbody>
  </table>
</body>
</html>`;
}

export async function renderPdf(jsonReport, outPdfPath) {
  const html = buildHtml(jsonReport);
  await fs.mkdir(path.dirname(outPdfPath), { recursive: true });

  // Note: si ton image docker utilise chromium système, tu peux set executablePath via env.
  const executablePath = process.env.PUPPETEER_EXECUTABLE_PATH || undefined;

  const browser = await puppeteer.launch({
    headless: "new",
    executablePath,
    args: ["--no-sandbox", "--disable-setuid-sandbox"],
  });

  try {
    const page = await browser.newPage();
    await page.setContent(html, { waitUntil: "networkidle0" });
    await page.pdf({
      path: outPdfPath,
      format: "A4",
      printBackground: true,
      margin: { top: "16mm", right: "10mm", bottom: "16mm", left: "10mm" },
    });
  } finally {
    await browser.close();
  }
}
