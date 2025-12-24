FROM python:3.12-slim

ARG GITLEAKS_VERSION=v8.24.2

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl git \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L -o /tmp/gitleaks.tar.gz \
    https://github.com/gitleaks/gitleaks/releases/download/${GITLEAKS_VERSION}/gitleaks_${GITLEAKS_VERSION#v}_linux_x64.tar.gz \
 && tar -xzf /tmp/gitleaks.tar.gz -C /usr/local/bin gitleaks \
 && chmod +x /usr/local/bin/gitleaks \
 && rm -f /tmp/gitleaks.tar.gz

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl openjdk-21-jre-headless apktool \
    && rm -rf /var/lib/apt/lists/*



WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app ./app
COPY config ./config
COPY rules ./rules

RUN mkdir -p /app/data/uploads /app/data/work

ENV DATA_DIR=/app/data
ENV SQLITE_PATH=/app/data/secrethunter.db
ENV REGEX_CONFIG=/app/config/regex_patterns.json
ENV YARA_RULES_DIR=/app/rules
ENV GITLEAKS_BIN=/usr/local/bin/gitleaks
ENV ENABLE_ENGINES=regex,yara,gitleaks

EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
