#!/bin/bash


OUTPUT=$(/opt/jboss/keycloak/bin/kcadm.sh create clients -r master -s clientId=my-app -s enabled=true --no-config --server http://localhost:8080/auth --realm master --user admin --password admin 2>&1)
CLIENTID=$(echo $OUTPUT | grep "Created new client with id" | cut -d"'" -f 2)
echo "client id = $CLIENTID"

OUTPUT=$(/opt/jboss/keycloak/bin/kcadm.sh get clients/$CLIENTID/installation/providers/keycloak-oidc-keycloak-json -r master --no-config --server http://localhost:8080/auth --realm master --user admin --password admin 2>&1)
echo $OUTPUT

