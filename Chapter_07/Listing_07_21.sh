#!/bin/bash

aws s3 sync access_logs

grep -r "REST.PUT.OBJECT" access_logs
