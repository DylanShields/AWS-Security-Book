#!/bin/bash

aws iam create-policy \
    --policy-name MobileAppPolicy \
    --policy-document file://Listing_02_31_policy.json

aws iam create-role \
    --role-name MobileAppRole \
    --assume-role-policy-document file://Listing_02_31_role_policy.json