FROM ubuntu:18.04

RUN apt-get update -yq \
    && apt-get install -yq mysql-client postgresql-client python3 python3-pip wget \
    && pip3 install awscli coscmd \
    && wget https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu1804-x86_64-100.3.1.deb \
    && apt install ./mongodb-database-tools-ubuntu1804-x86_64-100.3.1.deb \
    && rm mongodb-database-tools-ubuntu1804-x86_64-100.3.1.deb \
    && rm -rf /var/lib/apt/lists/*