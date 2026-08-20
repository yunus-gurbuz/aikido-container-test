FROM python:3.8-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

ENV API_KEY="sk-test-1234567890abcdef"

COPY app.py .

USER root

EXPOSE 5000

CMD ["python", "app.py"]
