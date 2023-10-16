#!/bin/bash

WEBSITE_URL=$1

if [[ -z $WEBSITE_URL ]]; then
  echo "Usage: $0 <website_url>"
  exit 1
fi

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" "$WEBSITE_URL")

if [ "$STATUS_CODE" -eq "200" ]; then
  echo "$WEBSITE_URL is up!"
else
  echo "$WEBSITE_URL returned a $STATUS_CODE status."
fi
