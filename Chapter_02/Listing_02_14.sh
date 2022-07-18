#!/bin/bash

# The following command creates a new managed policy using the policy document
# from the Listing_02_13_policy.json file.
aws iam create-policy \
    --policy-name SampleRolePolicy \
    --policy-document file://Listing_02_13_policy.json

# This command attaches the newly created managed policy to an IAM Role.
aws iam attach-role-policy \
    --role-name SampleRole \
    --policy-arn arn:aws:iam::123456789012:policy/SampleRolePolicy
