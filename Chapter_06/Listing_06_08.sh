#!/bin/bash

aws wafv2 create-web-acl \
    --name SizeConstraintWebAcl \
    --scope REGIONAL \
    --default-action "Allow={}" \
    --description "Blocks requests with BODY > 1KB" \
    --rules file://Listing_05_07.json \
    --visibility-config SampledRequestsEnabled=true,CloudWatchMetricsEnabled=true,MetricName=SizeConstraintWebAclMetrics
