#!/bin/bash

# This command will add a ReviewedOn=2020-01-01 tag to the Alice user
aws iam tag-user \
    --user-name Alice \
    --tags Key=ReviewedOn,Value=2020-01-01