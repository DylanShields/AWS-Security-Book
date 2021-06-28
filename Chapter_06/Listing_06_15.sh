#!/bin/bash

aws s3api list-object-versions \
    --bucket my-bucket \
    --prefix index.html

# Response: {
#   ...
#   "Versions": [
#     {
#       "LastModified": "2020-10-10T00:00:00.000Z",
#       "VersionId": "Rb_l2T8UHDkFEwCgJjhlgPOZC0qJ.vpD",
#       "IsLatest": false,
#       ...
#      }, {
#       "LastModified": "2020-11-10T00:00:00.000Z",
#       "VersionId": "rasWWGpgk9E4s0LyTJgusGeRQKLVIAFf",
#       "IsLatest": true,
#       ...
#     }
#   ]
# }



aws s3api get-object \
    --bucket my-bucket \
    --key my-key \
    --version-id "Rb_l2T8UHDkFEwCgJjhlgPOZC0qJ.vpD"
