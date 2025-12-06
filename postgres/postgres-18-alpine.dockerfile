FROM postgres:18-alpine

RUN apk update \
    && apk upgrade --no-cache \
    && rm -rf /var/cache/apk/*
