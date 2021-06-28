#!/bin/bash

aws ec2 create-vpc-endpoint \
    --vpc-id vpc123 \
    --vpc-endpoint-type Interface \
    --service-name com.amazonaws.us-east-1.sqs \
    --subnet-id subnet-123 \
    --security-group-id sg-123
