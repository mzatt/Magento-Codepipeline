#!/bin/bash
#Script to pull bucketname from Parameter store, download configurations into 
config=$(aws ssm get-parameters --region <region> --names <bucketnameparamter> --query Parameters[0].Value) #get param
config=`echo $config | sed -e 's/^"//' -e 's/"$//'` #strip quotes
aws s3 cp s3://$config/stage/ /path/to/webroot --recursive #pull code to webroot.

#run setup scripts
#flush cache
