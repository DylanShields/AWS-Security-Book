#!/bin/bash

aws inspector describe-findings \
    --finding-arns arn:aws:inspector:us-west-2:123456789012:target/A/template/B/run/C/finding/D
