#!/bin/bash

# The following command creates a new IAM Role with an assume role policy
# document that matches the one in the Listing_02_12_resourcepolicy.json
# file.
aws iam create-role \
    --role-name SampleRole \
    --assume-role-policy-document file://Listing_02_12_resourcepolicy.json
