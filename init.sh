#!/bin/bash
echo "Create your M2M application in Auth0"
echo "In order to update the text languages, you need to provide the following informations: "
echo "Insert your client identifier:"
read  clientid
echo "Insert your client secret"
read clientsecret
echo "Insert your audience ( without the last slash )"
read audience
echo "Writing data in the configuration"
echo "CLIENT=$clientid" > .env
echo "CS=$clientsecret" >> .env
echo "AUD=$audience" >> .env
./gentoken.sh
