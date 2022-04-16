# About

This piece of shell script is to fetch any mobile number based information from truecaller. It uses tokens which are stored in tokens.txt which gets rotated on a random seed. 

To get the tokens you will have to login to [truecaller](https://www.truecaller.com/) and grab the tokens which get stored in the localstorage under the key called **tc:user**.

Currently having the tokens.txt is a manual process, but the aim is to automate this procedure to reduce failure in API calls because of rate limit of the truecaller API

# How to

 1. git clone https://github.com/psvnlsaikumar/terminal_based_truecaller_query.git
 2. cd terminal_based_truecaller_query
 3. chmod +x tc_query.sh
 4. ./tc_query <PHONE_NUMBER>


# Tokens

The tokens have an expiration month of one month. So over a year, you would have to set up a cron or something like that to automate the process of fetching the tokens.


# NOTE
The tokens in the token.txt are examples of how the tokens would look like, and are not the actual tokens. To get the actual tokens, you would be required to signin and grab the tokens from truecaller.com
