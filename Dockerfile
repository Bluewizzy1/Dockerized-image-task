FROM python:3.9-slim-bullseye

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8000
# or EXPOSE 8080

CMD python manage.py runserver
# CMD python manage.py runserver 0.0.0.0:8080