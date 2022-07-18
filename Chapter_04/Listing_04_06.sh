#!/bin/bash

# This command will search for ListBuckets events in your CT event history.
# This file can be downloaded from the AWS Console for CloudTrail.
grep "ListBuckets" event_history.csv
