FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1
ENV C_FORCE_ROOT true
RUN mkdir /src
RUN mkdir /static
WORKDIR /src

# install psycopg2
RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add postgresql-dev \
    && pip install psycopg2 \
    && apk del build-deps

ADD ./src /src
RUN pip install --upgrade pip
RUN pip install -r requirements.pip
CMD python manage.py collectstatic --no-input;python manage.py migrate; gunicorn mydjango.wsgi -b 0.0.0.0:8000 & celery worker --app=myapp.tasks
