#!/bin/bash
ROLENAME=great-role

OUTPUT=$(docker exec keycloak /tmp/keycloak/create_role.sh $ROLENAME)
if [[ $OUTPUT == *"Created new role"* ]]; then
	echo "SUCCESS"
	echo $OUTPUT
    exit 0
else
	echo "FAILURE"
	echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi
