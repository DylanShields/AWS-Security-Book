#!/bin/bash

# In order to create the manager policy document, refer to tables 2.4 and 2.5.
aws iam create-policy \
    --policy-name IAMManagerPolicy \
    --policy-document file://Listing_02_20_manager_policy_document.json
aws iam attach-role-policy \
    --role-name IAMManager \
    --policy-arn arn:aws:iam::123456789012:policy/IAMManagerPolicy
