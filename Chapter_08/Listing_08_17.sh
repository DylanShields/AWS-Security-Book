#!/bin/bash

aws es create-elasticsearch-domain \
    --domain-name my-logs-cluster \
    --elasticsearch-version 6.2 \
    --elasticsearch-cluster-config InstanceType=m4.large.elasticsearch,InstanceCount=1 \
    --ebs-options EBSEnabled=true,VolumeType=standard,VolumeSize=10 \
    --access-policies '{"Version": "2012-10-17", "Statement": [ { "Effect": "Allow", "Principal": {"AWS": "arn:aws:iam::123456789012:root" }, "Action":"es:*", "Resource": "arn:aws:es:us-west-1:123456789012:domain/my-logs-cluster/*" } ] }' 
