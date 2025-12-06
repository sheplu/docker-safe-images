FROM postgres:17-alpine

RUN apk update \
    && apk upgrade --no-cache \
    && rm -rf /var/cache/apk/*
