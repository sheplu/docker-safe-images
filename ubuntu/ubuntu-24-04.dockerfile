FROM ubuntu:24.04

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
