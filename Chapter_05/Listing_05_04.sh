#!/bin/bash

aws ec2 create-vpc-endpoint \
    --vpc-id vpc-ec43eb89 \
    --vpc-endpoint-type Interface \
    --service-name com.amazonaws.vpce.us-east-1.vpce-svc-0e123abc123198abc \
    --subnet-id subnet-abababab \
    --security-group-id sg-1a2b3c4d
