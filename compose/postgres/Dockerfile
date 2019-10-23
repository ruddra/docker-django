FROM postgres:11-alpine

COPY ./compose/postgres/maintenance /usr/local/bin/maintenance
COPY ./compose/postgres/create_multiple_db.sh /docker-entrypoint-initdb.d/
RUN chmod +x /usr/local/bin/maintenance/*
RUN mv /usr/local/bin/maintenance/* /usr/local/bin && rmdir /usr/local/bin/maintenance