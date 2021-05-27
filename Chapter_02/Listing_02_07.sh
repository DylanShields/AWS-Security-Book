#!/bin/bash

# This command creates a new managed policy, using the document in
# Listing_2_2.json
aws iam create-policy \
    --policy-name SamplePolicy \
    --policy-document file://Listing_02_02.json

aws iam attach-user-policy \
    --user-name Alice \
    --policy-arn arn:aws:iam::123456789012:policy/SamplePolicy
