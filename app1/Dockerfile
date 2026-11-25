FROM python:3.12-alpine

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && adduser -S www
COPY app1.py .
USER www

# Gunicorn загружает модуль app1 и слушает порт из upstream Nginx.
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app1:app"]
