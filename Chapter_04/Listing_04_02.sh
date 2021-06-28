#!/bin/bash

aws ec2 create-subnet \
    --vpc-id vpc-1234 \
    --cidr-block 10.0.0.0/26

aws ec2 create-subnet \
    --vpc-id vpc-1234 \
    --cidr-block 10.0.0.64/26
