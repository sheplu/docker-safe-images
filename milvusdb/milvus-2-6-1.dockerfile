FROM milvusdb/milvus:v2.6.1

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove \
    && apt-get clean
