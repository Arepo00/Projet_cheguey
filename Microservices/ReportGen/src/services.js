// ReportGen/src/services.js
const DEFAULT_TIMEOUT_MS = parseInt(process.env.FETCH_TIMEOUT_MS || "15000", 10);

// IMPORTANT: en Docker compose, les services sont joignables par leur nom de service
export const SERVICES = {
  apk_scanner: {
    baseUrl: process.env.APK_SCANNER_URL || "http://apk_scanner:8000",
    scanPath: (id) => `/scan/${id}`,
  },
  secret_hunter: {
    baseUrl: process.env.SECRET_HUNTER_URL || "http://secret_hunter:8000",
    scanPath: (id) => `/scan/${id}`,
  },
  crypto_check: {
    baseUrl: process.env.CRYPTO_CHECK_URL || "http://crypto_check:8000",
    scanPath: (id) => `/scan/${id}`,
  },
  network_inspector: {
    baseUrl: process.env.NETWORK_INSPECTOR_URL || "http://network_inspector_api:8000",
    scanPath: (id) => `/scan/${id}`,
  },
};

function withTimeout(ms) {
  const controller = new AbortController();
  const t = setTimeout(() => controller.abort(), ms);
  return { controller, cancel: () => clearTimeout(t) };
}

export async function fetchScanOrThrow(serviceName, scanId) {
  const svc = SERVICES[serviceName];
  if (!svc) throw new Error(`Unknown service: ${serviceName}`);

  const url = `${svc.baseUrl}${svc.scanPath(scanId)}`;

  const { controller, cancel } = withTimeout(DEFAULT_TIMEOUT_MS);
  try {
    const resp = await fetch(url, { signal: controller.signal });
    if (!resp.ok) {
      throw new Error(`HTTP ${resp.status} when fetching ${url}`);
    }
    const data = await resp.json();
    // si le service renvoie "not found"
    if (data?.error === "not found") {
      throw new Error(`scan_id ${scanId} not found in ${serviceName}`);
    }
    return data;
  } catch (e) {
    if (String(e?.name) === "AbortError") {
      throw new Error(`Timeout after ${DEFAULT_TIMEOUT_MS}ms for ${serviceName}`);
    }
    throw e;
  } finally {
    cancel();
  }
}
