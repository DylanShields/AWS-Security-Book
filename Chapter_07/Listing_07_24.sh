#!/bin/bash

aws cloudtrail create-trail \
    --name "MyTrail" \
    --is-multi-region-trail
