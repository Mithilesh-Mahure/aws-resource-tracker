# AWS Resource Tracker

A Bash script to list AWS resources from different AWS services using the AWS CLI.

## Features

- Lists resources from multiple AWS services
- Supports region-specific queries
- Simple command-line interface
- Lightweight and fast
- Beginner-friendly DevOps project

---

## Supported AWS Services

| Service | Command Used |
|---|---|
| EC2 | describe-instances |
| S3 | list-buckets |
| RDS | describe-db-instances |
| Lambda | list-functions |
| DynamoDB | list-tables |
| CloudFormation | list-stacks |
| CloudWatch | list-metrics |
| IAM | list-users |
| VPC | describe-vpcs |
| EBS | describe-volumes |
| ELB | describe-load-balancers |
| CloudFront | list-distributions |
| Route53 | list-hosted-zones |
| SNS | list-topics |
| SQS | list-queues |

---

# Prerequisites

Before running the script, ensure the following are installed:

- AWS CLI
- Bash
- Configured AWS credentials

---

# Install AWS CLI

## Linux

```bash
sudo apt update
sudo apt install awscli -y
```

## Verify Installation

```bash
aws --version
```

---

# Configure AWS CLI

Run:

```bash
aws configure
```

Provide:

- AWS Access Key ID
- AWS Secret Access Key
- Default Region
- Output Format

---

# Project Structure

```bash
.
├── aws_resource_list.sh
└── README.md
```

---

# Usage

```bash
./aws_resource_list.sh <region> <service_name>
```

---

# Example Commands

## List EC2 Instances

```bash
./aws_resource_list.sh us-east-1 EC2
```

## List S3 Buckets

```bash
./aws_resource_list.sh us-east-1 S3
```

## List Lambda Functions

```bash
./aws_resource_list.sh ap-south-1 Lambda
```

---

# Make Script Executable

```bash
chmod +x aws_resource_list.sh
```

---

# Supported Service Names

```text
EC2
S3
RDS
Lambda
DynamoDB
CloudFormation
CloudWatch
IAM
VPC
EBS
ELB
CloudFront
Route53
SNS
SQS
```

---

# Error Handling

The script checks for:

- Missing arguments
- AWS CLI installation
- AWS CLI configuration
- Unsupported services

---

# Future Improvements

- Add support for more AWS services
- JSON and table formatted output
- Multi-region scanning
- Export results to CSV
- Interactive menu support
- Colorized terminal output

---

# Author

Mithilesh Mahure

---

# License

This project is open-source and free to use.
