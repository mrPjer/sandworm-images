FROM ubuntu:16.04

COPY compile.sh .
COPY entrypoint.sh .
COPY stream-collector.sh .

ENTRYPOINT ["/bin/bash", "-c", "./entrypoint.sh"]
