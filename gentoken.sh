#!/bin/bash
source .env
#echo $CLIENT
res=$(curl -s --request POST \
  --url https://myhomeagenda.eu.auth0.com/oauth/token \
  --header 'content-type: application/json' \
  --data "{\"client_id\":\"$CLIENT\",\"client_secret\":\"$CS\",\"audience\":\"$AUD\",\"grant_type\":\"client_credentials\"}" | jq -r .access_token)
echo "TOKEN=$res" > .at
