import { config } from "../config.js";

function abortableFetch(url, ms) {
  const controller = new AbortController();
  const t = setTimeout(() => controller.abort(), ms);
  return fetch(url, { signal: controller.signal })
    .finally(() => clearTimeout(t));
}

async function fetchJson(url) {
  const r = await abortableFetch(url, config.httpTimeoutMs);
  if (!r.ok) throw new Error(`Fetch failed ${r.status} for ${url}`);
  return r.json();
}

export async function fetchAllScans(scans) {
  // scans: { apk_scanner: id, secret_hunter: id, crypto_check: id, network_inspector: id }
  const tasks = [];

  if (scans.apk_scanner !== undefined) {
    tasks.push(fetchJson(`${config.apkScannerUrl}/scan/${scans.apk_scanner}`).then(d => ["apk_scanner", d]));
  }
  if (scans.secret_hunter !== undefined) {
    tasks.push(fetchJson(`${config.secretHunterUrl}/scan/${scans.secret_hunter}`).then(d => ["secret_hunter", d]));
  }
  if (scans.crypto_check !== undefined) {
    tasks.push(fetchJson(`${config.cryptoCheckUrl}/scan/${scans.crypto_check}`).then(d => ["crypto_check", d]));
  }
  if (scans.network_inspector !== undefined) {
    tasks.push(fetchJson(`${config.networkInspectorUrl}/scan/${scans.network_inspector}`).then(d => ["network_inspector", d]));
  }

  const out = {};
  const results = await Promise.allSettled(tasks);
  for (const r of results) {
    if (r.status === "fulfilled") {
      const [k, v] = r.value;
      out[k] = v;
    } else {
      // on garde l’erreur, mais on n’empêche pas le rapport si un MS est down
      out[`error_${Math.random().toString(16).slice(2)}`] = String(r.reason?.message || r.reason);
    }
  }
  return out;
}
