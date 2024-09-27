#!/bin/bash

# Variables for url to file and file name
URL=$1
FILE_NAME=$2

# Load in file and name it the inputted file name
curl $URL > $FILE_NAME

# Upload to s3 bucket
aws s3 cp $FILE_NAME s3://ds2022-mgh2xx/

# Presign URL w/ 7 day expiration
aws s3 presign --expires-in 604800 s3://ds2022-mgh2xx/$FILE_NAME

# Presign URL link
# https://ds2022-mgh2xx.s3.us-east-1.amazonaws.com/patriots_logo.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIATHVQLABV3KIPLE3M%2F20240927%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240927T202512Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=7e35ef2be4ec05d470ab50df46d8a1066194cf561013dd0c35a2cefb07476ae9