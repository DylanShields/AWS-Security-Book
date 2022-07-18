#!/bin/bash

aws sqs receive-message \
    --queue-url https://sqs.us-east-1.amazonaws.com/123456789012/MyQueue
