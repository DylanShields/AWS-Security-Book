#!/bin/bash

# This command adds the IAM User Alice to the Developers IAM Group
aws iam add-user-to-group \
    --group-name Developers \
    --user-name Alice