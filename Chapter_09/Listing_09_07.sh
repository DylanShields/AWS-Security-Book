#!/bin/bash

aws events put-rule \
    --event-pattern '{"source": ["aws.securityhub"],"detail-type": ["Security Hub Findings - Custom Action"],"resources": ["arn:aws:securityhub:us-west-2:123456789012:action/custom/test-action1"]}'
