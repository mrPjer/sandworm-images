LOGGER_ENDPOINT="$1"

if [ -f ./stdin ]
	then
		./runner.sh \
		< ./stdin \
		1> >(tee >(./stream-collector.sh "$LOGGER_ENDPOINT" stdout)) \
		2> >(tee >(./stream-collector.sh "$LOGGER_ENDPOINT" stderr) >&2)
	else
		./runner.sh \
		1> >(tee >(./stream-collector.sh "$LOGGER_ENDPOINT" stdout)) \
		2> >(tee >(./stream-collector.sh "$LOGGER_ENDPOINT" stderr) >&2)
fi
