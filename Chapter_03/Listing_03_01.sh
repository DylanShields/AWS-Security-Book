#!/bin/bash

# This command updates the IAM password policy for your AWS account
aws iam update-account-password-policy \
        --minimum-password-length 6 \
        --require-numbers \
        --max-password-age 180