#!/bin/bash

aws ec2 create-security-group \
    --vpc-id vpc-1234 \
    --group-name "PublicAccessSecurityGroup"

aws ec2 modify-instance-attribute \
    --instance-id i-1234 \
    --groups sg-1234 sg-5678
