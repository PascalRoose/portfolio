FROM python:3.10.7-alpine3.16

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

EXPOSE 8080

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src .
ENTRYPOINT ["python", "manage.py"]

CMD ["runserver", "0.0.0.0:8080"]