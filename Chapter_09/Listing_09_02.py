import boto3

s3_client = boto3.client('s3')

buckets = s3_client.list_buckets()['Buckets']
non_compliant_buckets = []

for bucket in buckets:
    bucket_name = bucket['Name']
    try:
        s3_client.get_bucket_encryption(Bucket=bucket_name)
    except s3_client.exceptions.ClientError as e:
        if e.response['Error']['Code'] == 'ServerSideEncryptionConfigurationNotFoundError':
            non_compliant_buckets.append(bucket_name)
        else:
            raise e

print(f"Checked {len(buckets)} bucket(s).")
print(f"Found {len(non_compliant_buckets)} bucket(s) without encryption:")
print(non_compliant_buckets)
