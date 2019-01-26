#!/bin/bash
CLIENTNAME=my-app

OUTPUT=$(docker exec keycloak /tmp/keycloak/create_client.sh $CLIENTNAME)
if [[ $OUTPUT == *"\"resource\" : \"$CLIENTNAME\""* ]]; then
	echo "SUCCESS"
	echo $OUTPUT
    exit 0
else
	echo "FAILURE"
	echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi
