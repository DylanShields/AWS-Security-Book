#!/bin/bash

aws ec2 create-subnet \
    --vpc-id vpc-1234 \
    --cidr-block 10.0.0.0/24

aws ec2 create-subnet \
    --vpc-id vpc-5678 \
    --cidr-block 10.0.1.0/24
