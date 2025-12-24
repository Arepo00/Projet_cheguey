FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl \
    openjdk-21-jre-headless \
    apktool \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# 1) copy requirements first (better caching)
COPY requirements.txt /app/requirements.txt

# 2) install deps
RUN pip install --no-cache-dir -r /app/requirements.txt

# 3) copy code
COPY app /app/app
COPY config ./config

ENV DATA_DIR=/app/data
ENV SQLITE_PATH=/app/data/cryptocheck.db
ENV APKTOOL_BIN=apktool

RUN mkdir -p /app/data

EXPOSE 8000
CMD ["python", "-m", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
