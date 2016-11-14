FROM python:latest
ENV PYTHONUNBUFFERED 1

#ENV C_FORCE_ROOT true

ENV APP_USER myapp
ENV APP_ROOT /src
RUN mkdir /src;
RUN groupadd -r ${APP_USER} \
    && useradd -r -m \
    --home-dir ${APP_ROOT} \
    -s /usr/sbin/nologin \
    -g ${APP_USER} ${APP_USER}

WORKDIR ${APP_ROOT}

RUN mkdir /config
ADD config/requirements.pip /config/
RUN pip install -r /config/requirements.pip

USER ${APP_USER}
ADD . ${APP_ROOT}
