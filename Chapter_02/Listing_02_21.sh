#!/bin/bash

aws iam create-role \
    --role-name CrossAccountRoleForAlice \
    --assume-role-policy-document file://Listing_02_21_cross_account_policy.json

aws iam create-policy \
    --policy-name DynamoDBQueryAccess \
    --policy-document file://Listing_02_21_query_policy.json

aws iam attach-role-policy \
    --role-name CrossAccountRoleForAlice \
    --policy-arn arn:aws:iam::111111111111:policy/DynamoDBQueryAccess
