# Magento-Codepipeline
Sample files needed to automate Magento1 deployment using [AWS CodePiplines](https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html) and [AWS CodeDeploy](https://docs.aws.amazon.com/codedeploy/latest/userguide/welcome.html)

Clone/download this repo into your magento webroot. ```appspec.yml``` needs to be in the root directory. 

# Usage
  * Create an ec2 role with S3 access privilages and ssm:DescribeParameters/GetParameters
  
  * Modify appspec.yml file with your destination/owners and permissions. 
  
  * Modify beforeInstall.sh and afterInstall.sh, current configuration assumes Magento configuration files are stored in a secret s3 bucket, Bucket name is stored in EC2 Parameter store, and used to copy configuration files to webroot.
  
