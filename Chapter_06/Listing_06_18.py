import boto3
import os

def register_ip_address():
    source_ip = event['headers']['X-Forwarded-For'].split(',')[0].strip()
    waf_client = boto3.client('waf')
    waf_client.update_ip_set(
        IPSetId=os.environ['IPSetId'],
        ChangeToken=waf.get_change_token()['ChangeToken'],
        Updates=[{
            'Action': 'INSERT',
            'IPSetDescriptor': {
                'Type': 'IPV4',
                'Value': source_ip + '/32'
            }
        }])
