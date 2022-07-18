#!/bin/bash

aws ec2 accept-vpc-endpoint-connections \
    --service-id vpce-svc-0123abc \
    --vpc-endpoint-ids vpce-0123abc
