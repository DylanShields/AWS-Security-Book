#!/bin/bash

aws wafv2 create-web-acl \
    --name ManagedRuleGroupWebAcl \
    --scope REGIONAL \
    --default-action "Allow={}" \
    --description "Enables one of the AWS Managed Rule Groups" \
    --rules file://Listing_05_09.json \
    --visibility-config SampledRequestsEnabled=true,CloudWatchMetricsEnabled=true,MetricName=ManagedRuleGroupWebAclMetrics
