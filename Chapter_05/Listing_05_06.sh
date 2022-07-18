#!/bin/bash

aws ec2 authorize-security-group-ingress \
    --group-id sg-1234 \
    --cidr "0.0.0.0/0" \
    --port 22 \
    --protocol 6
