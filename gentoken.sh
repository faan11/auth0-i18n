#!/bin/bash
source .env
#echo $CLIENT

res=$(curl -s --request POST \
  --url https://$DOMAIN/oauth/token \
  --header 'content-type: application/json' \
  --data "{\"client_id\":\"$CLIENT\",\"client_secret\":\"$CS\",\"audience\":\"https://$AUDIENCE/\",\"grant_type\":\"client_credentials\"}" | jq -r .access_token)
echo "TOKEN=$res" > .at
