# AWS Resource Tracker

A lightweight Bash script to list and track AWS resources from different AWS services using the AWS CLI. Perfect for DevOps engineers, cloud administrators, and AWS enthusiasts who need quick resource visibility across their AWS account.

## 🏷️ Tech Stack

![Bash](https://img.shields.io/badge/Bash-121011?style=flat-square&logo=gnu-bash&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=flat-square&logo=amazon-aws&logoColor=white)
![AWS CLI](https://img.shields.io/badge/AWS%20CLI-232F3E?style=flat-square&logo=amazon-aws&logoColor=white)
![Shell Script](https://img.shields.io/badge/Shell_Script-121011?style=flat-square&logo=gnu-bash&logoColor=white)

## ✨ Features

- 📋 Lists resources from 15+ AWS services
- 🌍 Supports region-specific queries
- ⚡ Lightweight and fast execution
- 🔧 Simple command-line interface
- 🛡️ Comprehensive error handling
- 👶 Beginner-friendly DevOps project
- 📦 No external dependencies (uses native AWS CLI)

---

## 📚 Supported AWS Services

| # | Service | AWS CLI Command |
|---|---|---|
| 1 | EC2 | describe-instances |
| 2 | S3 | list-buckets |
| 3 | RDS | describe-db-instances |
| 4 | Lambda | list-functions |
| 5 | DynamoDB | list-tables |
| 6 | CloudFormation | list-stacks |
| 7 | CloudWatch | list-metrics |
| 8 | IAM | list-users |
| 9 | VPC | describe-vpcs |
| 10 | EBS | describe-volumes |
| 11 | ELB | describe-load-balancers |
| 12 | CloudFront | list-distributions |
| 13 | Route53 | list-hosted-zones |
| 14 | SNS | list-topics |
| 15 | SQS | list-queues |

---

## 📋 Prerequisites

Before running the script, ensure the following are installed:

- **Bash** (version 4.0+)
- **AWS CLI** (version 2.0+)
- **Configured AWS credentials**

---

## 🔧 Installation

### Step 1: Install AWS CLI

#### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install awscli -y
```

#### macOS (using Homebrew)
```bash
brew install awscli
```

#### Windows (using Chocolatey)
```bash
choco install awscli
```

### Step 2: Verify Installation

```bash
aws --version
bash --version
```

### Step 3: Configure AWS CLI

Run the following command and provide your AWS credentials:

```bash
aws configure
```

You'll be prompted to enter:
- AWS Access Key ID
- AWS Secret Access Key
- Default Region (e.g., us-east-1)
- Output Format (e.g., json)

### Step 4: Make Script Executable

```bash
chmod +x aws_resource_list.sh
```

---

## 📂 Project Structure

```bash
aws-resource-tracker/
├── aws_resource_list.sh    # Main script
├── README.md               # This file
└── .gitignore              # Git ignore file
```

---

## 🚀 Usage

### Basic Syntax
```bash
./aws_resource_list.sh <region> <service_name>
```

### Parameters
- **region**: AWS region (e.g., us-east-1, eu-west-1, ap-south-1)
- **service_name**: AWS service name (case-insensitive)

---

## 💡 Example Commands

### List EC2 Instances
```bash
./aws_resource_list.sh us-east-1 EC2
```

### List S3 Buckets (Global Service)
```bash
./aws_resource_list.sh us-east-1 S3
```

### List Lambda Functions
```bash
./aws_resource_list.sh ap-south-1 Lambda
```

### List RDS Databases
```bash
./aws_resource_list.sh eu-west-1 RDS
```

### List DynamoDB Tables
```bash
./aws_resource_list.sh us-west-2 DynamoDB
```

### List IAM Users (Global Service)
```bash
./aws_resource_list.sh us-east-1 IAM
```

### List VPCs
```bash
./aws_resource_list.sh us-east-1 VPC
```

---

## ✅ Supported Service Names

```text
EC2, S3, RDS, Lambda, DynamoDB, CloudFormation,
CloudWatch, IAM, VPC, EBS, ELB, CloudFront,
Route53, SNS, SQS
```

---

## 🛡️ Error Handling

The script includes robust error handling for:

- ✗ Missing command-line arguments
- ✗ AWS CLI not installed
- ✗ AWS CLI not configured (missing credentials)
- ✗ Unsupported or invalid service names
- ✗ Invalid AWS regions

---

## 📊 Script Features

### Case-Insensitive Input
The script accepts service names in any case:
```bash
./aws_resource_list.sh us-east-1 ec2      # Works
./aws_resource_list.sh us-east-1 EC2      # Works
./aws_resource_list.sh us-east-1 Ec2      # Works
```

### Comprehensive Output
All resources are returned in JSON format with full details including:
- Resource IDs and names
- Creation dates
- Configuration details
- Tags and metadata

---

## 🔮 Future Enhancements

- [ ] JSON and table formatted output options
- [ ] Multi-region scanning in a single run
- [ ] Export results to CSV/Excel formats
- [ ] Interactive menu support
- [ ] Colorized terminal output
- [ ] Filtering and search capabilities
- [ ] Resource cost estimation
- [ ] Report generation
- [ ] Scheduled automation (cron jobs)
- [ ] Slack/Email notifications

---

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📝 License

This project is open-source and free to use under the MIT License.

---

## 👤 Author

**Mithilesh Mahure**
- GitHub: [@Mithilesh-Mahure](https://github.com/Mithilesh-Mahure)

---

## 📞 Support

If you encounter any issues or have questions:

1. Check the [Troubleshooting](#error-handling) section
2. Review your AWS CLI configuration (`aws configure`)
3. Verify your AWS credentials have appropriate permissions
4. Open an [GitHub Issue](https://github.com/Mithilesh-Mahure/aws-resource-tracker/issues)

---

## 🙏 Acknowledgments

Built with ❤️ for the DevOps and Cloud Engineering community.
