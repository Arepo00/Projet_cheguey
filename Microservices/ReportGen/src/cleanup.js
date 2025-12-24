// ReportGen/src/cleanup.js
import path from "path";
import { listDirs, safeStat, readJson, rmrf } from "./storage.js";

function nowEpoch() {
  return Math.floor(Date.now() / 1000);
}

export async function cleanupOldReports(reportsDir, olderThanSeconds) {
  const dirs = await listDirs(reportsDir);
  let deleted = 0;
  let kept = 0;
  const details = [];

  const cutoff = nowEpoch() - olderThanSeconds;

  for (const d of dirs) {
    const dirPath = path.join(reportsDir, d);
    const metaPath = path.join(dirPath, "meta.json");

    let createdAt = null;

    try {
      const metaStat = await safeStat(metaPath);
      if (metaStat) {
        const meta = await readJson(metaPath);
        createdAt = Number(meta?.created_at) || null;
      }

      // fallback: utiliser mtime si meta absent
      if (!createdAt) {
        const st = await safeStat(dirPath);
        if (st) createdAt = Math.floor(st.mtimeMs / 1000);
      }

      if (createdAt && createdAt < cutoff) {
        await rmrf(dirPath);
        deleted += 1;
        details.push({ report_id: d, action: "deleted", created_at: createdAt });
      } else {
        kept += 1;
      }
    } catch (e) {
      // si un report est corrompu, on le garde mais on log
      kept += 1;
      details.push({ report_id: d, action: "kept_error", error: String(e?.message || e) });
    }
  }

  return { deleted, kept, older_than_seconds: olderThanSeconds, cutoff_epoch: cutoff, details };
}
