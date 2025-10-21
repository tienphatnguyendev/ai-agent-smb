FROM python:3.11-slim

WORKDIR /app

COPY app/ /app/
COPY config/ /config/

RUN pip install --no-cache-dir -r requirements.txt || true

CMD ["python", "main.py"]
