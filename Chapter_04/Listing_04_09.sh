#!/bin/bash

aws ec2 create-vpc \
    --cidr-block 10.0.0.0/24

aws ec2 create-vpc \
    --cidr-block 10.0.1.0/24
