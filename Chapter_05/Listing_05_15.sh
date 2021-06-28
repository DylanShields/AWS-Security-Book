#!/bin/bash

aws wafv2 create-web-acl \
    --name HoneypotWebAcl \
    --scope REGIONAL \
    --default-action "Allow={}" \
    --description "Honeypot for social media site" \
    --rules file://Listing_05_16.json
