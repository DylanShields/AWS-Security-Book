#!/bin/bash

aws kms decrypt \
    --ciphertext-blob fileb://<(echo "AQICAHhaYby0ER/F0r2fJ8leIiEYT8hF6p2FKW+OqoeitzZIBQGCeM8xeUu7RPzqIOnNUaA9AAAAZjBkBgkqhkiG9w0BBwagVzBVAgEAMFAGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMEt2IqCUVQQmo0gyAAgEQgCNGhkZ4AzqDYy1mxD58eyOslb4nomwIgixHyiXyv1YRDiWGvw==" | base64 -d)

# Response: {
#     ...
#     "Plaintext": "TXlBcGlLZXk="
# }

echo "TXlBcGlLZXk=" | base64 -d
