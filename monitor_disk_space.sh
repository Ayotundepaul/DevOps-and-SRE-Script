#!/bin/bash

THRESHOLD=90
LOG_FILE="/var/log/disk_space_monitor.log"

CURRENT_USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [[ $CURRENT_USAGE -gt $THRESHOLD ]]; then
  echo "Disk space usage is above $THRESHOLD%. Current usage is $CURRENT_USAGE%." >> $LOG_FILE
fi
