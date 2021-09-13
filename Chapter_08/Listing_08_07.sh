#!/bin/bash

aws inspector list-findings \
    --assessment-run-arns arn:aws:inspector:us-west-2:123456789012:target/A/template/B/run/C \
    --filter severities=High
