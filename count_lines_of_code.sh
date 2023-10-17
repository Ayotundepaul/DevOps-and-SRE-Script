#!/bin/bash

DIRECTORY=$1

if [[ -z $DIRECTORY ]]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

find "$DIRECTORY" -name '*.*' | xargs wc -l
