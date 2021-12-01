#!/bin/bash
echo "Create your M2M application in Auth0"
echo "In order to update the text languages, you need to provide the following informations: "
echo "Insert your client identifier:"
read  clientid
echo "Insert your client secret"
read clientsecret
echo "Insert your domain"
read domain
echo "Writing data in the configuration"
echo "CLIENT=$clientid" > .env
echo "CS=$clientsecret" >> .env
echo "DOMAIN=$domain" >> .env
echo "AUDIENCE=$domain/api/v2" >> .env
./gentoken.sh
