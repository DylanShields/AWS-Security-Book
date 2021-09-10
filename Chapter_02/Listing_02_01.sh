#!/bin/bash

# This command creates a new IAM User: Alice
aws iam create-user --user-name Alice

# This command creates a new access key pair that can be used to authenticate
# as Alice with the AWS CLI or SDKs.
aws iam create-access-key --user-name Alice
   
# The access key pair will be returned in the response. For example:
# Response: { "AccessKey": {
#   "UserName": "Alice",
#   ...
#   "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
#   "AccessKeyId": "AKIAIOSFODNN7EXAMPLE"
# }}


# This command creates a new IAM User: Bob
aws iam create-user --user-name Bob

# This command creates a password that can be used to login as Bob in the AWS
# Console. The password is set to require a reset on first login.
aws iam create-login-profile --user-name Bob --password B0bsPassword \
    --password-reset-required
