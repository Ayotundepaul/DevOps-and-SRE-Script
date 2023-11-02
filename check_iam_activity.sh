#!/bin/bash

# Fetch list of IAM users
users=$(aws iam list-users --query "Users[].UserName" --output text)

for user in $users; do
    echo "Checking user: $user"
    
    # Check last time user logged into AWS Management Console
    login_time=$(aws iam get-user --user-name $user --query "User.PasswordLastUsed" --output text)
    if [ "$login_time" == "None" ]; then
        echo "  - Never logged into AWS Management Console"
    else
        echo "  - Last AWS Management Console login: $login_time"
    fi
    
    # List access keys and their last used date
    keys=$(aws iam list-access-keys --user-name $user --query "AccessKeyMetadata[].AccessKeyId" --output text)
    for key in $keys; do
        key_last_used=$(aws iam get-access-key-last-used --access-key-id $key --query "AccessKeyLastUsed.LastUsedDate" --output text)
        if [ "$key_last_used" == "None" ]; then
            echo "  - Access key $key was never used"
        else
            echo "  - Access key $key last used on: $key_last_used"
        fi
    done

    echo "-----------------------------------------"
done
