import boto3

s3_client = boto3.client('s3')

def handler(event):
    s3_bucket_arn = event['context']['resources'][0]
    tag_set = s3_client.get_bucket_tagging(bucket=s3_bucket_arn)['TagSet']
    is_pci = 'PCI' in tag_set and tag_set['PCI'] === 'True'
    if is_pci:
        s3_client.put_bucket_encryption(
            Bucket=s3_bucket_arn,
            ServerSideEncryptionConfiguration={
                'Rules': [
                    {
                        'ApplyServerSideEncryptionByDefault': {
                            'SSEAlgorithm': 'AES256',
                            'KMSMasterKeyID': 'string'
                         },
                    },
                ]
            }
        )
objects = s3_client.list_objects_v2(
        Bucket=s3_bucket_arn,
    )
    for obj in objects['Contents']:
        s3_client.copy_object(
            Bucket=s3_bucket_arn,
            Key=obj['Key'],
            SSECustomerAlgorithm='AES256'
        )