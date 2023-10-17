#!/bin/bash

DIRECTORY=$1
DAYS_OLD=$2

if [[ -z $DIRECTORY || -z $DAYS_OLD ]]; then
  echo "Usage: $0 <directory> <days_old>"
  exit 1
fi

find "$DIRECTORY" -type f -mtime +$DAYS_OLD -exec rm {} \;
echo "Deleted files older than $DAYS_OLD days from $DIRECTORY"
