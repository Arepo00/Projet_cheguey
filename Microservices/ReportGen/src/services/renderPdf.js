import fs from "fs";
import path from "path";
import puppeteer from "puppeteer-core";
import { config } from "../config.js";

function escapeHtml(s) {
  return String(s ?? "")
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

function renderHtmlTemplate(report) {
  const tplPath = path.join(process.cwd(), "src", "templates", "report.html");
  const tpl = fs.readFileSync(tplPath, "utf-8");

  const rows = (report.findings_list || []).map(f => {
    return `
      <tr>
        <td>${escapeHtml(f.severity)}</td>
        <td>${escapeHtml(f.source)}</td>
        <td>${escapeHtml(f.id)}</td>
        <td>
          <div class="title">${escapeHtml(f.title)}</div>
          <div class="rec">${escapeHtml(f.recommendation)}</div>
        </td>
      </tr>
    `;
  }).join("\n");

  return tpl
    .replaceAll("{{PACKAGE}}", escapeHtml(report.package))
    .replaceAll("{{PARENT_SCAN_ID}}", escapeHtml(report.parent_scan_id))
    .replaceAll("{{GENERATED_AT}}", escapeHtml(new Date(report.generated_at * 1000).toISOString()))
    .replaceAll("{{TOTAL}}", escapeHtml(report.findings_list?.length || 0))
    .replaceAll("{{ROWS}}", rows);
}

export async function renderPdf(report, pdfPath) {
  const html = renderHtmlTemplate(report);

  const browser = await puppeteer.launch({
    executablePath: config.chromiumPath,
    args: ["--no-sandbox", "--disable-setuid-sandbox"],
    headless: "new"
  });

  try {
    const page = await browser.newPage();
    await page.setContent(html, { waitUntil: "networkidle0" });
    await page.pdf({
      path: pdfPath,
      format: "A4",
      printBackground: true,
      margin: { top: "16mm", right: "12mm", bottom: "16mm", left: "12mm" }
    });
  } finally {
    await browser.close();
  }
}
