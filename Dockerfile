FROM python:latest
ENV PYTHONUNBUFFERED 1
ENV C_FORCE_ROOT true
RUN mkdir /src;
WORKDIR /src
ADD ./src /src
RUN pip install -r requirements.pip
RUN ./manage.py collectstatic --no-input
CMD python manage.py migrate; gunicorn mydjango.wsgi -b 0.0.0.0:8000 & celery worker --app=myapp.tasks