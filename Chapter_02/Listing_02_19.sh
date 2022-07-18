#!/bin/bash

aws iam create-role \
    --role-name IAMMaster \
    --assume-role-policy-document file://Listing_02_18_master_policy.json
aws iam create-role \
    --role-name IAMManager \
    --assume-role-policy-document file://Listing_02_18_manager_policy.json
