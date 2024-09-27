#!/usr/bin/python3

import sys
import boto3
import urllib

# Variables for url to file and file name
url = sys.argv[1]
local_file = sys.argv[2]

# Loading in the file
file = urllib.request.urlopen(url).read()

# Create client
s3 = boto3.client('s3', region_name="us-east-1")

# Uploading file to bucket
bucket = 'ds2022-mgh2xx'

resp = s3.put_object(
    Body = file,
    Bucket = bucket,
    Key = local_file,
    ACL = 'public-read'
)

# Presigning file for 7 days
expires_in = 604800
response = s3.generate_presigned_url(
    'get_object',
    Params = {'Bucket': bucket, 'Key': local_file},
    ExpiresIn = expires_in
)

# Printing Presigned URL
print(response)

# Outputted presigned URL
# https://ds2022-mgh2xx.s3.amazonaws.com/uva.png?AWSAccessKeyId=AKIATHVQLABV3KIPLE3M&Signature=sLn4Lv2P9PWvSQ4KTAw%2FVVty5LU%3D&Expires=1728078472