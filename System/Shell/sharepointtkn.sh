#!/bin/sh
# ------------------------------------------------------------------------------------------
# returns the accestoken for a user/domain for sharepoint
# ------------------------------------------------------------------------------------------
host="$1"     # https://host.dk
username="$2" # user@domain
password="$3" # my_password

curl -k -L -c cookie.jar \
  --data-urlencode "UserName=$username" \
  --data-urlencode "Password=$password" \
  --data-urlencode "AuthMethod=FormsAuthentication" \
  -- "$host" > /dev/null

awk -F'\t' 'tolower($0) ~ /edgeaccesscookie/{last=$6"="$7}END{print last}' cookie.jar

rm -- cookie.jar
