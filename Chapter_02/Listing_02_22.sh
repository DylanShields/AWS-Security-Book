#!/bin/bash

aws sts assume-role \
    --role-arn arn:aws:iam::111111111111:role/CrossAccountRoleForAlice \
    --role-session-name my-sample-role-session \
    --duration-seconds 900

aws dynamodb query \
    --table-name SharedTable
