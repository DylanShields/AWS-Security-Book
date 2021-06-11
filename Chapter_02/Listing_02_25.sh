#!/bin/bash

aws organizations attach-policy \
    --policy-id p-DenyCreatingInstancesPolicy \
    --target-id r-centralaccountid123