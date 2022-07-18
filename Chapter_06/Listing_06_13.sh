#!/bin/bash

aws wafv2 associate-web-acl \
    --web-acl-arn "arn:aws:waf:us-east-1:123456789012:web-acl-123" \
    --resource-arn "arn:aws:apigateway:us-east-1::/restapis/abc123/stages/production"
