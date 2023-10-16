#!/bin/bash

USERNAME=$1

if [[ -z $USERNAME ]]; then
  echo "Please provide a GitHub username."
  exit 1
fi

REPOS=$(curl -s "https://api.github.com/users/$USERNAME/repos" | jq -r '.[].clone_url')

for REPO in $REPOS; do
  git clone "$REPO"
done
