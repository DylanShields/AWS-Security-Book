#!/bin/bash

aws dynamodb describe-continuous-backups \
    --table-name Music

aws dynamodb restore-table-to-point-in-time \
    --source-table-name Music \
    --target-table-name MusicEarliestRestorableDateTime \
    --restore-date-time 1519257118.0
