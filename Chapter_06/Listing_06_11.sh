#!/bin/bash

aws dynamodb restore-table-from-backup \
    --target-table-name Music \
    --backup-arn MusicBackup
