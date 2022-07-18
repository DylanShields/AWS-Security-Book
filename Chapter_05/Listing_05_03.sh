#!/bin/bash

aws ec2 run-instances \
    --instance-type t2.micro \
    --subnet-id subnet-1234 \
    --image-id ami-1234

aws ec2 run-instances \
    --instance-type t2.micro \
    --subnet-id subnet-5678 \
    --image-id ami-1234
