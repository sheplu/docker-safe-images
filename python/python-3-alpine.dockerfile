FROM python:3-alpine

RUN apk update \
    && apk upgrade --no-cache \
    && rm -rf /var/cache/apk/*
