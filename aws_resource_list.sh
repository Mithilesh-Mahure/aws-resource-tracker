#!/usr/bin/env bash

##############################################################################################################
# This script lists AWS resources in the current account and region.
#
# Author  : Mithilesh Mahure
# Version : v0.0.02
# Date    : 2026-05-23
#
# Supported Services:
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
# 12. CloudFront
# 13. Route53
# 14. SNS
# 15. SQS
#
# Usage:
# ./aws_resource_list.sh <region> <service_name>
#
# Example:
# ./aws_resource_list.sh us-east-1 EC2
##############################################################################################################

set -euo pipefail

# Validate arguments
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <region> <service_name>"
    exit 1
fi

REGION="$1"
SERVICE_NAME="$2"

# Convert service name to uppercase for case-insensitive matching
SERVICE_NAME=$(echo "$SERVICE_NAME" | tr '[:lower:]' '[:upper:]')

# Check AWS CLI installation
if ! command -v aws &>/dev/null; then
    echo "ERROR: AWS CLI is not installed."
    exit 1
fi

# Check AWS credentials/configuration
if ! aws sts get-caller-identity &>/dev/null; then
    echo "ERROR: AWS CLI is not configured properly."
    exit 1
fi

echo "Listing resources for service: $SERVICE_NAME"
echo "Region: $REGION"
echo "--------------------------------------------------"

case "$SERVICE_NAME" in

    EC2)
        aws ec2 describe-instances --region "$REGION"
        ;;

    S3)
        aws s3api list-buckets
        ;;

    RDS)
        aws rds describe-db-instances --region "$REGION"
        ;;

    LAMBDA)
        aws lambda list-functions --region "$REGION"
        ;;

    DYNAMODB)
        aws dynamodb list-tables --region "$REGION"
        ;;

    CLOUDFORMATION)
        aws cloudformation list-stacks --region "$REGION"
        ;;

    CLOUDWATCH)
        aws cloudwatch list-metrics --region "$REGION"
        ;;

    IAM)
        aws iam list-users
        ;;

    VPC)
        aws ec2 describe-vpcs --region "$REGION"
        ;;

    EBS)
        aws ec2 describe-volumes --region "$REGION"
        ;;

    ELB)
        echo "Classic Load Balancers:"
        aws elb describe-load-balancers --region "$REGION"

        echo
        echo "Application/Network Load Balancers:"
        aws elbv2 describe-load-balancers --region "$REGION"
        ;;

    CLOUDFRONT)
        aws cloudfront list-distributions
        ;;

    ROUTE53)
        aws route53 list-hosted-zones
        ;;

    SNS)
        aws sns list-topics --region "$REGION"
        ;;

    SQS)
        aws sqs list-queues --region "$REGION"
        ;;

    *)
        echo "ERROR: Unsupported service: $SERVICE_NAME"
        echo
        echo "Supported services:"
        echo "EC2, S3, RDS, Lambda, DynamoDB, CloudFormation,"
        echo "CloudWatch, IAM, VPC, EBS, ELB, CloudFront,"
        echo "Route53, SNS, SQS"
        exit 1
        ;;
esac
