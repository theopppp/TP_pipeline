# Dockerfile to build a flask app
# Dockerfile to build a flask app

FROM python:3.8-slim-buster



WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt



COPY . .



CMD ["python", "-m", "app.py"]
