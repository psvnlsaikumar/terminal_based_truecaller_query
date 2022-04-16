


function getPhoneNumberDetails(){

   declare phone_number=$1 
   declare KEY=$SESSION
   echo "querying for $phone_number with key $KEY.....";
   curl "https://asia-south1-truecaller-web.cloudfunctions.net/api/noneu/search/v1?q=$phone_number&countryCode=in" \
  -H "authority: asia-south1-truecaller-web.cloudfunctions.net" \
  -H "accept: */*" \
  -H "accept-language: en-US,en;q=0.9" \
  -H "authorization: Bearer $KEY" \
  -H "content-type: application/json" \
  -H "origin: https://www.truecaller.com" \
  -H "referer: https://www.truecaller.com/" \
  -H "sec-fetch-dest: empty" \
  -H "sec-fetch-mode: cors" \
  -H "sec-fetch-site: cross-site" \
  -H "sec-gpc: 1" \
  -H "user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.79 Safari/537.36" \
  --compressed
}


function getRotatedAccounts(){
    shuf -n 1 tokens.txt
}

declare SESSION=$(getRotatedAccounts)

getPhoneNumberDetails $1 $SESSION
