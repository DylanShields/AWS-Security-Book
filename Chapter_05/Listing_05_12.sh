#!/bin/bash

aws wafv2 create-web-acl \
    --name RateLimitWebAcl \
    --scope REGIONAL \
    --default-action "Allow={}" \
    --description "Rate limit for social media site" \
    --rules file://Listing_05_11.json
