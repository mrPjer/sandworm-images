LOGGER_ENDPOINT="$1"

set -e;

touch ./stdin;

{ ./runner.sh 2>&1 1>&3 3>&- < ./stdin | ./stream-collector.sh "$LOGGER_ENDPOINT" stderr; } 3>&1 1>&2 | ./stream-collector.sh "$LOGGER_ENDPOINT" stdout;
