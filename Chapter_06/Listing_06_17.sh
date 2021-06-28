#!/bin/bash

aws s3api create-bucket \
    --bucket MyAccessLogsBucket


aws s3api put-bucket-logging \
    --bucket MyExistingBucket \
    --bucket-logging-status file://Listing_06_17_logging.json
