#!/bin/bash


aws lambda create-function \
    --function-name honeypot-lambda \
    --runtime python3.7 \
    --role arn:aws:...:HoneypotLambdaRole \
    --handler honeypot.register_ip_address
    --zip-file fileb://Listing_05_17_emptyzip.zip


aws apigateway create-resource \
    --rest-api-id abc123 \
    --parent-id a1b1 \
    --path-part 'totally-not-a-honeypot'


aws apigateway put-integration \
    --rest-api-id abc123 \
    --resource-id def456 \
    --http-method GET \
    --type AWS_PROXY \
    --uri aws:apigateway:us-east-1:lambda:honeypot-lambda/invoke
