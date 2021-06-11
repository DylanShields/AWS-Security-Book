#!/bin/bash

# In order to create the master policy document, refer to tables 2.2, 2.3, and 2.4.
aws iam create-policy \
    --policy-name IAMMasterPolicy \
    --policy-document {REPLACE_WITH_MASTER_POLICY_DOCUMENT}
aws iam attach-role-policy \
    --role-name IAMMaster \
    --policy-arn arn:aws:iam::123456789012:policy/IAMMasterPolicy
