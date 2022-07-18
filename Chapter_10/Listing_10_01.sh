#!/bin/bash

aws securityhub enable-import-findings-for-product \
    --region <region> \
    --product-arn arn:aws:securityhub:<region>::product/prowler/prowler
