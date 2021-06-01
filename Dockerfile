FROM ubuntu:18.04

RUN apt-get update -yq \
    && apt-get install -yq mysql-client postgresql-client mongo-tools python3 python3-pip \
    && pip3 install awscli coscmd \
    && rm -rf /var/lib/apt/lists/*