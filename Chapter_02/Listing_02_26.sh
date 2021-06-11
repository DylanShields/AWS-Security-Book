#!/bin/bash

aws ec2 create-tags \
    --resources i-123abc \
    --tags Key=Environment,Value=Prod
