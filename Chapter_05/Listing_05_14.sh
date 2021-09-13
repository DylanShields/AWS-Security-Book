#!/bin/bash

aws wafv2 create-ip-set \
    --name "MyIpSet" \
    --scope REGIONAL \
    --ip-address-version IPV4 \
    --addresses 192.0.2.0/32
