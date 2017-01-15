LOGGER_ENDPOINT="$1"
LOGGER_TAG="$2"

while IFS= read -r line || [[ -n "$line" ]];
do
	if [ "$LOGGER_TAG" == "stderr" ]; then
		echo $line >&2;
	else
		echo $line;
	fi

	if [ ! -z "$LOGGER_ENDPOINT" ]; then
		curl \
			"$LOGGER_ENDPOINT" \
			--silent
			--data-urlencode "tag=$LOGGER_TAG" \
			--data-urlencode "content=$line" \
			--data-urlencode "timestamp=`date --iso-8601=s`"
			> /dev/null
	fi
done
