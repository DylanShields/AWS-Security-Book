#!/bin/bash

aws sts assume-role-with-web-identity \
    --role-arn arn:aws:iam::123456789012:role/MobileAppRole \
    --role-session-name MobileAppSession \
    --web-identity-token authToken
