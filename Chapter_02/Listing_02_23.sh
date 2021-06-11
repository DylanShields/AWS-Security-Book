#!/bin/bash

aws organizations create-organization \
    --feature-set ALL

aws organizations invite-account-to-organization \
    --target Id=account_a_email@example.com,Type=EMAIL

aws organizations invite-account-to-organization \
    --target Id=123456789012,Type=ACCOUNT
