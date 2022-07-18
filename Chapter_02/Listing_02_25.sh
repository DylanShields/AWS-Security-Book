#!/bin/bash

aws iam tag-user \
    --user-name Alice \
    --tags Key=Project,Value=ABC

aws ec2 create-tags \
    --resources i-123abc \
    --tags Key=Project,Value=ABC
