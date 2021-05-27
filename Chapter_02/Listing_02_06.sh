#!/bin/bash

# This command creates a new IAM User: Bob
# This will fail if you already created a user named Bob in Listing 2.1 
aws iam create-user \
    --user-name Bob

# This command adds an inline policy, specifically the one in Listing_2_2.json
# to the IAM User Bob.
aws iam put-user-policy \
    --user-name Bob \
    --policy-name SampleInlinePolicy \
    --policy-document file://Listing_02_02.json
