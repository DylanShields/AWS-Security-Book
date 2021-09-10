#!/bin/bash

aws ec2 allocate-address \
    --domain vpc \
    --network-border-group us-east-1
