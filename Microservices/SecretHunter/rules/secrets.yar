rule Secret_001_AWS_AccessKey
{
  meta:
    description = "AWS Access Key ID"
    severity = "high"
  strings:
    $r1 = /AKIA[0-9A-Z]{16}/ ascii wide
    $r2 = /ASIA[0-9A-Z]{16}/ ascii wide
  condition:
    any of them
}

rule Secret_002_Google_APIKey
{
  meta:
    description = "Google API key (AIza...)"
    severity = "high"
  strings:
    $g = /AIza[0-9A-Za-z\-_]{35}/ ascii wide
  condition:
    $g
}

rule Secret_003_GitHub_PAT
{
  meta:
    description = "GitHub PAT tokens"
    severity = "high"
  strings:
    $a = /ghp_[A-Za-z0-9]{36}/ ascii wide
    $b = /gho_[A-Za-z0-9]{36}/ ascii wide
    $c = /ghs_[A-Za-z0-9]{36}/ ascii wide
    $d = /ghu_[A-Za-z0-9]{36}/ ascii wide
  condition:
    any of them
}

rule Secret_004_GitLab_PAT
{
  meta:
    description = "GitLab personal access token"
    severity = "high"
  strings:
    $gl = /glpat-[A-Za-z0-9_\-]{20,}/ ascii wide
  condition:
    $gl
}

rule Secret_005_Slack_Token
{
  meta:
    description = "Slack token (xox...)"
    severity = "high"
  strings:
    $s = /xox[baprs]-[0-9A-Za-z\-]{10,48}/ ascii wide
  condition:
    $s
}

rule Secret_006_Stripe_Keys
{
  meta:
    description = "Stripe secret/restricted keys"
    severity = "high"
  strings:
    $sk = /sk_live_[0-9a-zA-Z]{24,}/ ascii wide
    $rk = /rk_live_[0-9a-zA-Z]{24,}/ ascii wide
  condition:
    any of them
}

rule Secret_007_SendGrid
{
  meta:
    description = "SendGrid API Key"
    severity = "high"
  strings:
    $sg = /SG\.[A-Za-z0-9_\-]{20,}\.[A-Za-z0-9_\-]{20,}/ ascii wide
  condition:
    $sg
}

rule Secret_008_Twilio_SID_Key
{
  meta:
    description = "Twilio Account SID / API key"
    severity = "high"
  strings:
    $ac = /AC[a-f0-9]{32}/ ascii wide
    $sk = /SK[a-f0-9]{32}/ ascii wide
  condition:
    any of them
}

rule Secret_009_Mailgun
{
  meta:
    description = "Mailgun API key"
    severity = "high"
  strings:
    $mg = /key-[0-9a-f]{32}/ ascii wide
  condition:
    $mg
}

rule Secret_010_DigitalOcean
{
  meta:
    description = "DigitalOcean token dop_v1_"
    severity = "high"
  strings:
    $do = /dop_v1_[A-Za-z0-9]{48}/ ascii wide
  condition:
    $do
}

rule Secret_011_Telegram_BotToken
{
  meta:
    description = "Telegram bot token"
    severity = "high"
  strings:
    $t = /[0-9]{8,10}:[A-Za-z0-9_\-]{35}/ ascii wide
  condition:
    $t
}

rule Secret_012_Discord_Token
{
  meta:
    description = "Discord bot token (heuristic)"
    severity = "high"
  strings:
    $d = /[MN][A-Za-z0-9]{23}\.[A-Za-z0-9]{6}\.[A-Za-z0-9_\-]{27}/ ascii wide
  condition:
    $d
}

rule Secret_013_JWT
{
  meta:
    description = "JWT token"
    severity = "medium"
  strings:
    $j = /eyJ[A-Za-z0-9_\-]{10,}\.eyJ[A-Za-z0-9_\-]{10,}\.[A-Za-z0-9_\-]{10,}/ ascii wide
  condition:
    $j
}

rule Secret_014_PrivateKey_Block
{
  meta:
    description = "Private key block header"
    severity = "critical"
  strings:
    $k1 = "-----BEGIN RSA PRIVATE KEY-----" ascii wide
    $k2 = "-----BEGIN EC PRIVATE KEY-----" ascii wide
    $k3 = "-----BEGIN DSA PRIVATE KEY-----" ascii wide
    $k4 = "-----BEGIN OPENSSH PRIVATE KEY-----" ascii wide
    $k5 = "-----BEGIN PGP PRIVATE KEY BLOCK-----" ascii wide
  condition:
    any of them
}

rule Secret_015_Azure_AccountKey
{
  meta:
    description = "Azure Storage AccountKey in connection string"
    severity = "high"
  strings:
    $a = /AccountKey=[A-Za-z0-9+\/=]{30,}/ ascii wide
  condition:
    $a
}

rule Secret_016_Azure_SAS
{
  meta:
    description = "Azure SAS token signature"
    severity = "high"
  strings:
    $s = /sv=[0-9]{4}-[0-9]{2}-[0-9]{2}.*&sig=[A-Za-z0-9%\/+=]{20,}/ ascii wide
  condition:
    $s
}

rule Secret_017_GCP_ServiceAccount
{
  meta:
    description = "GCP service account JSON markers"
    severity = "high"
  strings:
    $t = "\"type\": \"service_account\"" ascii wide
    $p = "\"private_key_id\"" ascii wide
    $k = "\"private_key\"" ascii wide
  condition:
    2 of them
}

rule Secret_018_Firebase_DatabaseURL
{
  meta:
    description = "Firebase database URL"
    severity = "low"
  strings:
    $f = /https:\/\/[A-Za-z0-9\-]+\.firebaseio\.com/ ascii wide
  condition:
    $f
}

rule Secret_019_Sentry_DSN
{
  meta:
    description = "Sentry DSN style URL"
    severity = "medium"
  strings:
    $s = /https:\/\/[A-Za-z0-9]+@[A-Za-z0-9\.\-]+\/[0-9]+/ ascii wide
  condition:
    $s
}

rule Secret_020_Braintree_Token
{
  meta:
    description = "Braintree access token"
    severity = "high"
  strings:
    $b = /access_token\$production\$[0-9a-z]{16}\$[0-9a-f]{32}/ ascii wide
  condition:
    $b
}

rule Secret_021_Square_Token
{
  meta:
    description = "Square access token"
    severity = "high"
  strings:
    $sq = /sq0atp-[0-9A-Za-z\-_]{22,}/ ascii wide
  condition:
    $sq
}

rule Secret_022_Shopify_Token
{
  meta:
    description = "Shopify token shpat_"
    severity = "high"
  strings:
    $sh = /shpat_[A-Fa-f0-9]{32}/ ascii wide
  condition:
    $sh
}

rule Secret_023_NPM_Token
{
  meta:
    description = "NPM token npm_"
    severity = "high"
  strings:
    $n = /npm_[A-Za-z0-9]{36}/ ascii wide
  condition:
    $n
}

rule Secret_024_PyPI_Token
{
  meta:
    description = "PyPI token pypi-"
    severity = "high"
  strings:
    $p = /pypi-[A-Za-z0-9_\-]{20,}/ ascii wide
  condition:
    $p
}

rule Secret_025_Heroku_Key
{
  meta:
    description = "Heroku api key heuristic (32 hex near heroku)"
    severity = "high"
  strings:
    $h1 = /heroku/i ascii wide
    $h2 = /[0-9a-f]{32}/ ascii wide
  condition:
    $h1 and $h2
}

rule Secret_026_DB_URI_Mongo
{
  meta:
    description = "MongoDB URI"
    severity = "high"
  strings:
    $m = /mongodb(\+srv)?:\/\/[^\s]+/ ascii wide
  condition:
    $m
}

rule Secret_027_DB_URI_Postgres
{
  meta:
    description = "Postgres URI"
    severity = "high"
  strings:
    $p = /postgres(ql)?:\/\/[^\s]+/ ascii wide
  condition:
    $p
}

rule Secret_028_DB_URI_MySQL
{
  meta:
    description = "MySQL URI"
    severity = "high"
  strings:
    $m = /mysql:\/\/[^\s]+/ ascii wide
  condition:
    $m
}

rule Secret_029_DB_URI_Redis
{
  meta:
    description = "Redis URI"
    severity = "medium"
  strings:
    $r = /redis:\/\/[^\s]+/ ascii wide
  condition:
    $r
}

rule Secret_030_BasicAuth_URL
{
  meta:
    description = "Basic auth URL user:pass@host"
    severity = "high"
  strings:
    $b = /https?:\/\/[^\s\/:@]+:[^\s@]+@[^\s\/]+/ ascii wide
  condition:
    $b
}

rule Secret_031_Password_Assignment
{
  meta:
    description = "password=..."
    severity = "medium"
  strings:
    $p = /(password|passwd|pwd)\s*[:=]\s*["'][^"']{6,}["']/ nocase ascii wide
  condition:
    $p
}

rule Secret_032_ApiKey_Assignment
{
  meta:
    description = "apiKey=..."
    severity = "medium"
  strings:
    $k = /(api[_-]?key|apikey)\s*[:=]\s*["'][A-Za-z0-9_\-]{16,}["']/ nocase ascii wide
  condition:
    $k
}

rule Secret_033_ClientSecret_Assignment
{
  meta:
    description = "client_secret=..."
    severity = "high"
  strings:
    $c = /client[_-]?secret\s*[:=]\s*["'][A-Za-z0-9_\-]{12,}["']/ nocase ascii wide
  condition:
    $c
}

rule Secret_034_Bearer_Header
{
  meta:
    description = "Authorization: Bearer ..."
    severity = "medium"
  strings:
    $a = /authorization\s*[:=]\s*["']Bearer\s+[A-Za-z0-9_\-\.]{20,}["']/ nocase ascii wide
  condition:
    $a
}

rule Secret_035_OAuth_RefreshToken
{
  meta:
    description = "OAuth refresh token heuristic"
    severity = "high"
  strings:
    $r = /refresh[_-]?token\s*[:=]\s*["'][A-Za-z0-9_\-]{20,}["']/ nocase ascii wide
  condition:
    $r
}

rule Secret_036_Generic_Token_Long
{
  meta:
    description = "Generic token/secret 32+ chars"
    severity = "low"
  strings:
    $t = /(token|secret)\s*[:=]\s*["'][A-Za-z0-9_\-]{32,}["']/ nocase ascii wide
  condition:
    $t
}

rule Secret_037_RSA_Key_Marker
{
  meta:
    description = "RSA private key header"
    severity = "critical"
  strings:
    $k = "BEGIN RSA PRIVATE KEY" ascii wide
  condition:
    $k
}

rule Secret_038_OpenSSH_Key_Marker
{
  meta:
    description = "OPENSSH private key header"
    severity = "critical"
  strings:
    $k = "BEGIN OPENSSH PRIVATE KEY" ascii wide
  condition:
    $k
}

rule Secret_039_PGP_Key_Marker
{
  meta:
    description = "PGP private key header"
    severity = "critical"
  strings:
    $k = "BEGIN PGP PRIVATE KEY BLOCK" ascii wide
  condition:
    $k
}

rule Secret_040_AWS_S3_Bucket_URL
{
  meta:
    description = "S3 bucket URL patterns"
    severity = "low"
  strings:
    $s1 = /s3\.amazonaws\.com\/[A-Za-z0-9\.\-_]{3,63}/ ascii wide
    $s2 = /[A-Za-z0-9\.\-_]{3,63}\.s3\.amazonaws\.com/ ascii wide
  condition:
    any of them
}

rule Secret_041_Google_ServiceAccount_Email
{
  meta:
    description = "GCP service account email marker"
    severity = "medium"
  strings:
    $e = /[A-Za-z0-9\-_]+@[A-Za-z0-9\-_]+\.iam\.gserviceaccount\.com/ ascii wide
  condition:
    $e
}

rule Secret_042_Android_Keystore_Password
{
  meta:
    description = "keystore password assignment"
    severity = "high"
  strings:
    $k = /(keystore|store)Password\s*[:=]\s*["'][^"']{6,}["']/ nocase ascii wide
  condition:
    $k
}

rule Secret_043_Android_KeyAlias_Password
{
  meta:
    description = "keyPassword assignment"
    severity = "high"
  strings:
    $k = /keyPassword\s*[:=]\s*["'][^"']{6,}["']/ nocase ascii wide
  condition:
    $k
}

rule Secret_044_AuthHeader_APIKey
{
  meta:
    description = "Authorization: ApiKey ..."
    severity = "high"
  strings:
    $a = /authorization\s*[:=]\s*["']ApiKey\s+[A-Za-z0-9_\-\.]{16,}["']/ nocase ascii wide
  condition:
    $a
}

rule Secret_045_Bitmap_Noise_Filter
{
  meta:
    description = "Avoid false positives on Android schema URLs"
    severity = "info"
  strings:
    $schema = "http://schemas.android.com/" ascii wide
  condition:
    $schema
}

rule Secret_046_AWS_SSM_ParameterName
{
  meta:
    description = "AWS parameter store reference (possible secret name)"
    severity = "low"
  strings:
    $p = /ssm:\/\/[A-Za-z0-9\/_\-]{5,}/ ascii wide
  condition:
    $p
}

rule Secret_047_Firebase_WebAPIKey_Label
{
  meta:
    description = "Firebase Web API key label"
    severity = "medium"
  strings:
    $k = /firebase.*api[_-]?key/i ascii wide
  condition:
    $k
}

rule Secret_048_Stripe_Label
{
  meta:
    description = "Stripe key label"
    severity = "medium"
  strings:
    $k = /stripe.*(secret|key)/i ascii wide
  condition:
    $k
}

rule Secret_049_Slack_Label
{
  meta:
    description = "Slack token label"
    severity = "medium"
  strings:
    $k = /slack.*token/i ascii wide
  condition:
    $k
}

rule Secret_050_Git_Token_Label
{
  meta:
    description = "Generic git token label"
    severity = "medium"
  strings:
    $k = /(github|gitlab).*(token|pat|secret)/i ascii wide
  condition:
    $k
}
