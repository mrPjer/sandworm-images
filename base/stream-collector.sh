LOGGER_ENDPOINT="$1"
LOGGER_TAG="$2"

while IFS= read -r line || [[ -n "$line" ]];
do
	if [ "$LOGGER_TAG" == "stderr" ]; then
		echo $line >&2;
	else
		echo $line;
	fi

	curl \
		"$LOGGER_ENDPOINT" \
		-vvv \
		--data-urlencode "tag=$LOGGER_TAG" \
		--data-urlencode "content=$line" \
		--data-urlencode "timestamp=`date --iso-8601=s`"
done
