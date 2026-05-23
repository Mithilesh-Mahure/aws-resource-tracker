#!/usr/bin/env bash

##############################################################################################################
# This script lists all AWS resources in the current account and region.
# Author: Mithilesh Mahure
# Version: v0.0.01
# Date: 2024-06-01

# Supported AWS services by the script
# 1. EC2
# 2. S3
# 3. RDS
# 4. Lambda
# 5. DynamoDB
# 6. CloudFormation
# 7. CloudWatch
# 8. IAM
# 9. VPC
# 10. EBS
# 11. ELB
# 12. CLoudFront
# 13. Route53
# 14. SNS
# 15. SQS

# Usage: ./aws_resource_list.sh <region> <service_name>
# Example: ./aws_resource_list.sh us-east-1 ec2
################################################################################################################


# Check if the required arguments are provided
# check if no of arguments is not equal to 2, then print usage and exit with status code 1
if [ $# -ne 2 ]; then
    echo "Usage: $0 <region> <service_name>"
    exit 1
fi

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI not found. Please install AWS CLI to use this script."
    exit 1
fi

# Check if AWS CLI is configured
if [ ! -d "$HOME/.aws" ]; then
    echo "AWS CLI is not configured. Please configure AWS CLI to use this script."
    exit 1
fi

region=$1
service_name=$2