#!/bin/bash

aws dynamodb create-backup \
    --table-name Music \
    --backup-name MusicBackup
