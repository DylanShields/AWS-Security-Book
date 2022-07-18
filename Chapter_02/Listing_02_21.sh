#!/bin/bash

# In order to create the master policy document, refer to tables 2.2, 2.3, and 2.4.
aws iam create-policy \
    --policy-name IAMMasterPolicy \
    --policy-document file://Listing_02_19_master_policy_document.json
aws iam attach-role-policy \
    --role-name IAMMaster \
    --policy-arn arn:aws:iam::123456789012:policy/IAMMasterPolicy
