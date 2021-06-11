#!/bin/bash

aws sts assume-role \
    --role-arn arn:aws:iam::123456789012:role/SampleRole \
    --role-session-name my-sample-role-session \
    --duration-seconds 900

# Expected Response Structure
# {
#    "AssumedRoleUser": {
#        "AssumedRoleId": "...",
#        "Arn": "..."
#    },
#    "Credentials": {
#        "SecretAccessKey": "...",
#        "SessionToken": "...",
#        "Expiration": "2020-01-01T12:00:00Z",
#        "AccessKeyId": ".."
#    }
# }
