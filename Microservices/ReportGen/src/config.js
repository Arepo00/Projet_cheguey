export const config = {
  port: process.env.PORT || 8000,
  dataDir: process.env.DATA_DIR || "/app/data",
  chromiumPath: process.env.CHROMIUM_PATH || "/usr/bin/chromium",

  // URLs internes Docker (recommandé)
  apkScannerUrl: process.env.APK_SCANNER_URL || "http://apk_scanner:8000",
  secretHunterUrl: process.env.SECRET_HUNTER_URL || "http://secret_hunter:8000",
  cryptoCheckUrl: process.env.CRYPTO_CHECK_URL || "http://crypto_check:8000",
  networkInspectorUrl: process.env.NETWORK_INSPECTOR_URL || "http://network_inspector_api:8000",

  // timeouts
  httpTimeoutMs: Number(process.env.HTTP_TIMEOUT_MS || 15000)
};
