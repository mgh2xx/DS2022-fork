#!/bin/bash

/usr/bin/yum update -y
/usr/bin/yum install -y git python3 python3-pip jq
/usr/bin/python3 -m pip install boto3
