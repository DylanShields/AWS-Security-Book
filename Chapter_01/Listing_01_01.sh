#!/bin/bash

# This command lists all of the tables in DynamoDB in the default region.
aws dynamodb list-tables

# If you don't have access to call the ListTables operation within DynamoDB,
# you should see the following exception:
#
# An error occurred (AccessDeniedException) when calling the ListTables
# operation: User: arn:aws:iam::123456789012:user/Alice is not authorized to
# perform: dynamodb:ListTables on resource:
# arn:aws:dynamodb:us-east-1:123456789012:table/*
#
# Once the correct IAM policy is applied, you should see something like:
#
# {
#   "TableNames": [
#     "MyTable",
#     ...
#   ]
# }
