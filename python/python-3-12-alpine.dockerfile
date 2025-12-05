FROM python:3.12-alpine

RUN apk update \
    && apk upgrade --no-cache \
    && rm -rf /var/cache/apk/*
