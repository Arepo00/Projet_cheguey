FROM python:3.12-slim

WORKDIR /app

# Apktool = Java + binaire apktool
RUN apt-get update && apt-get install -y --no-install-recommends \
    openjdk-21-jre-headless \
    apktool \
  && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app ./app

# Dossier data (uploads + apktool decode)
RUN mkdir -p /app/data/uploads /app/data/apktool

ENV PYTHONUNBUFFERED=1
ENV DATA_DIR=/app/data
ENV APKTOOL_MODE=auto
ENV APKTOOL_TIMEOUT=180

EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
