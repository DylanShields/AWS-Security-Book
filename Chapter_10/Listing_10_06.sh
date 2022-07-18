#!/bin/bash

aws securityhub create-action-target \
    --name "Encrypt S3 Bucket" \
    --description "Action to encrypt the S3 bucket" \
    --id "Encrypt"
