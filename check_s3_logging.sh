#!/bin/bash

for bucket in $(aws s3api list-buckets --query 'Buckets[].Name' --output text); do
    echo "Checking logging for bucket: $bucket"
    aws s3api get-bucket-logging --bucket $bucket
done
