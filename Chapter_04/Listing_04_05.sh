#!/bin/bash

aws ec2 create-nat-gateway \
    --subnet-id subnet-1234 \
    --allocation-id eipalloc-1234
