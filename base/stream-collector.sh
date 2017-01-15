LOGGER_ENDPOINT="$1"
LOGGER_TAG="$2"

while IFS= read -r line || [[ -n "$line" ]];
do
	curl \
		"$LOGGER_ENDPOINT" \
		--silent \
		--data-urlencode "tag=$LOGGER_TAG" \
		--data-urlencode "content=$line" \
		--data-urlencode "timestamp=`date --iso-8601=s`" \
	> /dev/null
done
