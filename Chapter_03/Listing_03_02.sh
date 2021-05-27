#!/bin/bash

# This command updates the IAM password policy for your AWS account
aws cloudtrail lookup-events \
    --lookup-attributes AttributeKey=EventName,AttributeValue=ListBuckets
