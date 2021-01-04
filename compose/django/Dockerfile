# More Datascience frendly gist can be found here: https://gist.github.com/ruddra/870d7a51238ddfa4b50375086c12a4f5
# pull official python alpine image
FROM python:3.7-alpine

# Set Environment Variable
ENV PYTHONUNBUFFERED 1
ENV C_FORCE_ROOT true

# Making source and static directory
RUN mkdir /src
RUN mkdir /static

# Creating Work Directory
WORKDIR /src

# Adding mandatory packages to docker
RUN apk update && apk add --no-cache \
    postgresql \
    zlib \
    jpeg 
# un-comment the following two dependecies if you want to add library like pandas, scipy and numpy
# openblas \ 
# libstdc++ 

# Installing temporary packages required for installing requirements.pip 
RUN apk add --no-cache --virtual build-deps \
    gcc \  
    python3-dev \ 
    musl-dev \
    postgresql-dev\
    zlib-dev \
    jpeg-dev 
# un-comment if you want to install numpy, pandas, scipy etc and their supported dependencies
# g++ \
# openblas-dev \
# cmake \
# && ln -s /usr/include/locale.h /usr/include/xlocale.h

# Update pip
RUN pip install --upgrade pip

# **if you want to install scipy uncomment the following file**
# RUN pip3 install --no-cache-dir --disable-pip-version-check scipy==1.3.1

# Installing requirements.pip from project
COPY ./src/requirements.pip /scripts/
RUN pip install --no-cache-dir -r /scripts/requirements.pip

# *install psycopg2 if you don't have it requirements.pip*
# RUN pip install --no-cache-dir psycopg2

# removing temporary packages from docker and removing cache 
RUN apk del build-deps && \
    find -type d -name __pycache__ -prune -exec rm -rf {} \; && \
    rm -rf ~/.cache/pip

# CMD will run when this dockerfile is running
CMD ["sh", "-c", "python manage.py collectstatic --no-input; python manage.py migrate; gunicorn mydjango.wsgi -b 0.0.0.0:8000 & celery --app myapp.tasks worker --loglevel=INFO"]
