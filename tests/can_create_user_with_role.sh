#!/bin/bash
USERNAME=great-user
PASSWORD=any
ROLENAME=great-role

OUTPUT=$(docker exec keycloak /tmp/keycloak/create_user_with_role.sh $USERNAME $PASSWORD $ROLENAME)
if [[ $OUTPUT == *"Created new user"* ]]; then
	echo "SUCCESS"
	echo $OUTPUT
    exit 0
else
	echo "FAILURE"
	echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi
