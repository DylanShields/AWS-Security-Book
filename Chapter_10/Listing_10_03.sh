#!/bin/bash

aws security-hub batch-update-findings \
    --finding-identifiers Id=abc123,ProductArn=arn:aws:securityhub:us-west-2::product/prowler/prowler \
    --workflow Status=RESOLVED
