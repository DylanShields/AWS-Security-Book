#!/bin/bash

aws ec2 create-internet-gateway

aws ec2 attach-internet-gateway \
    --internet-gateway-id igw-1234 \
    --vpc-id vpc-1234
