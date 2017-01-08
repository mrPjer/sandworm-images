FROM sandworm/base/base

RUN apt-get update \
    && apt-get install -y --no-install-recommends python2.7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY runner.sh .
