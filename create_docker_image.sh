#!/bin/bash

IMAGE_NAME=$1
TAG=$2

if [[ -z $IMAGE_NAME || -z $TAG ]]; then
  echo "Usage: $0 <image_name> <tag>"
  exit 1
fi

docker build -t "$IMAGE_NAME:$TAG" .

if [[ $? -ne 0 ]]; then
  echo "Docker build failed."
  exit 1
fi

docker push "$IMAGE_NAME:$TAG"
