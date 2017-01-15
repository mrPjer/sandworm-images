FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY compile.sh .
COPY entrypoint.sh .
COPY stream-collector.sh .

ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
