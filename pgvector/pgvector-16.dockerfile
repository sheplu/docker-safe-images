FROM pgvector/pgvector:pg16

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove \
    && apt-get clean
