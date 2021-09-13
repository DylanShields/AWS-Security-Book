#!/bin/bash

aws configservice subscribe \
    --s3-bucket my-config-bucket \
    --iam-role arn:aws:iam::123456789012:role/AWSServiceRoleForConfig
