#!/bin/bash

aws configservice put-config-rule --config-rule '{"ConfigRuleName": "MyRule", "Source": {"Owner": "AWS", "SourceIdentifier": "S3_DEFAULT_ENCRYPTION_KMS"}}'
