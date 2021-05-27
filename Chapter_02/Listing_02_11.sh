#!/bin/bash

# This command creates a new managed policy that allows Querying a DDB table
aws iam create-policy \
    --policy-name SampleGroupPolicy \
    --policy-document file://Listing_02_11_policy.json

# This command attaches the newly created policy to the Developers IAM Group
$ aws iam attach-group-policy \
    --group-name Developers \
    --policy-arn arn:aws:iam::123456789012:policy/SampleGroupPolicy
