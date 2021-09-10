#!/bin/bash

aws ec2 create-nat-gateway \
    --subnet-id subnet-1234 \
    --allocation-id {Replace with Allocation ID from running Listing_04_05_allocate_address.sh}
