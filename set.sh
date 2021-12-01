#!/bin/bash
# load content
content=$(cat i18n.json)
# load token
source .at
source .env
for row in $(echo "${content}" | jq -r 'keys[]'); do
   lang=$row
   
   for key in $(echo "${content}" | jq -r ".$lang | keys[]"); do
        
        data=$(echo ${content} | jq -r ".\"$lang\" | .\"$key\" ")
        dat=$(echo ${content} | jq -r "{\"$key\":.$lang.\"$key\"}")
        #echo $key 
        echo "Applying $lang - $key"
        #echo $dat
        curl  -s --output /dev/null --request PUT \
        	 --url "$aud/prompts/$key/custom-text/$lang" \
          	 --header "authorization: Bearer $TOKEN" \
         	 --header 'content-type: application/json' \
             --data "$dat"
        sleep 1
   done
  
  
   
done
echo "Done"
