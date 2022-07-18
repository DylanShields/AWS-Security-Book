#!/bin/bash

aws securityhub batch-enable-standards \
    --standards-subscription-requests '{"StandardsArn": "STANDARD_ARN"}'
