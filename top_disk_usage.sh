#!/bin/bash

DIRECTORY=$1
NUM_RESULTS=${2:-5}

if [[ -z $DIRECTORY ]]; then
  echo "Usage: $0 <directory> [number_of_results]"
  exit 1
fi

du -hs "$DIRECTORY"/* | sort -rh | head -n $NUM_RESULTS
