#!/bin/bash

aws securityhub create-insight \
    --filters '{"ResourceType": [{"Comparison": "EQUALS","Value": "AwsIamRole"}],"SeverityLabel": [{"Comparison": "EQUALS","Value": "CRITICAL"}]}' \
    --group-by-attribute "ResourceId" \
    --name "Roles with Critical Findings"
