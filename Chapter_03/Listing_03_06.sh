#!/bin/bash

aws iam create-open-id-connect-provider \
    --url https://mysigninurl.com \
    --client-id-list my-client-id \
    --thumbprint-list thumbprint
