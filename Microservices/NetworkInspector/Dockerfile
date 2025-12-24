FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app ./app
COPY config ./config

ENV DATA_DIR=/app/data
ENV SQLITE_PATH=/app/data/networkinspector.db
ENV FLOWS_FILE=/app/data/flows.jsonl
ENV HEADER_RULES=/app/config/header_rules.json
ENV TLS_RULES=/app/config/tls_rules.json
ENV LEAK_PATTERNS=/app/config/leak_patterns.json

EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
