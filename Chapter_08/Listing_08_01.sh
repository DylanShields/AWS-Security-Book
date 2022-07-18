#!/bin/bash

aws s3api create-bucket --bucket {REPLACE_WITH_BUCKET_NAME}

aws cloudtrail create-trail --name MyTrail --bucket-name my-cloudtrail-bucket
