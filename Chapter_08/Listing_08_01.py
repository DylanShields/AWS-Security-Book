import boto3

s3_client = boto3.client('s3')
bucket_name = 'aws-security-testing'

try:
    s3_client.get_bucket_encryption(Bucket=bucket_name)
    print("√ encryption is enabled for", bucket_name)
    except s3_client.exceptions.ClientError as e:
        if e.response['Error']['Code'] == 'ServerSideEncryptionConfigurationNotFoundError':
            print("X encryption is not enabled for", bucket_name)
        else:
            raise e
