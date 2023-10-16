#!/bin/bash

DIR_TO_BACKUP=$1
BACKUP_NAME="${DIR_TO_BACKUP}_$(date +%Y%m%d).tar.gz"

if [[ -z $DIR_TO_BACKUP ]]; then
  echo "Usage: $0 <directory_to_backup>"
  exit 1
fi

tar -czvf "$BACKUP_NAME" "$DIR_TO_BACKUP"
echo "Backup saved as $BACKUP_NAME"
