#!/bin/bash

THRESHOLD=75
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
  echo "CPU usage is above $THRESHOLD%. Current usage is $CPU_USAGE%."
fi
