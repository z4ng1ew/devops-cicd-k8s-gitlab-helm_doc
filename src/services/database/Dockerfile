
FROM postgres:14-alpine

LABEL maintainer="DevOps Course School21"
LABEL description="PostgreSQL 14 with auto-init script for microservices"
LABEL version="1.0"

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres
ENV PGDATA=/var/lib/postgresql/data


RUN apk add --no-cache bash

COPY init.sql /docker-entrypoint-initdb.d/01-init.sql

COPY init-check.sh /docker-entrypoint-initdb.d/02-init-check.sh

RUN chmod +x /docker-entrypoint-initdb.d/02-init-check.sh

EXPOSE 5432

HEALTHCHECK --interval=10s --timeout=5s --start-period=10s --retries=5 \
  CMD pg_isready -U postgres -d postgres || exit 1










