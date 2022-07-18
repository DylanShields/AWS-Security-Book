#!/bin/bash

aws iam create-policy \
    --policy-name AssumeSampleRolePolicy \
    --policy-document file://Listing_02_14.json

aws iam attach-user-policy \
    --user-name Alice \
    --policy-arn arn:aws:iam::123456789012:policy/AssumeSampleRolePolicy
