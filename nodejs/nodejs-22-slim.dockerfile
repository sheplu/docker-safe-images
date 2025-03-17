FROM node:22-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove \
    && apt-get clean
