# Auth0-i18n

This repo is used to translate auth0 universal login applications.
I'm not affiliated with Auth0.

auth0-i18n is a set of bash utilities that can be used with a M2M Auth0 application.
These applications depends on curl, bash, sed and jq.
They fetch the translations from the i18n.json file. 

The configuration of these tools is saved in the .env and .at file.


## Initialization

First of all, you should create a Machine to Machine application in your Auth0 account.
The script init.sh will ask you about the client identifier, the secret and the audience.
These information can be found in the application settings and main page.
Subsequently, the init will retrieve the api token and save it in .at file. 
This is done by the gentoken.sh script.

## Json file

The json file contains the translations. 
The root level object contains a set of keys reprenting the languages ( described in the https://auth0.com/docs/brand-and-customize/i18n/universal-login-internationalization ).
Each language contains at least one screen. Screens name and properties can be found here: https://auth0.com/docs/brand-and-customize/text-customization-new-universal-login. 

```
{
	"it": {
		"login-id":{
			"description": "test"
		},
		"login":{
			"description": "test"
		}
	},
    "en": {
		"login-id":{
			"description": "test"
		},
		"login":{
			"description": "test"
		}
	}
}

```
## Apply or reset translations

Once the json file is done, the user can apply the changes using the set.sh script. Translation can also restored after executing the script reset.sh .


# Contribution
Contributions are welcome, and can be done using pull requests and issues.