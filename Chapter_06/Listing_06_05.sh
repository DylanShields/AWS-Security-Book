#!/bin/bash

aws ec2 describe-vpc-endpoint-connections \
    --filters Name=vpc-endpoint-state,Values=pendingAcceptance
