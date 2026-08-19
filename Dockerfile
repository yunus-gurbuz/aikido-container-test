FROM python:3.8-slim

RUN pip install requests==2.19.1 flask==0.12.2 pyyaml==5.1 jinja2==2.10.1 markupsafe==1.1.1 werkzeug==0.14.1 itsdangerous==0.24

ENV API_KEY="sk-test-1234567890abcdef"

WORKDIR /app
COPY app.py .

USER root

EXPOSE 5000

CMD ["python", "app.py"]
