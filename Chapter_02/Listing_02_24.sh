#!/bin/bash

aws organizations create-policy \
    --content file://Listing_02_24_service-control-policy.json \
    --name DenyCreatingInstancesPolicy \
    --type SERVICE_CONTROL_POLICY \
    --description "Prevents creating any EC2 instances"
