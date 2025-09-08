FROM milvusdb/milvus:v2.6.1-gpu

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove \
    && apt-get clean
