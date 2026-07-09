## Cloud Portfolio: AWS VPC with Terraform

## Overview
This project provisions a basic AWS network infrastructure using Terraform,
as part of my cloud engineering portfolio. It creates a VPC with a public
subnet, internet connectivity, and an EC2 instance — the foundation for
future projects (S3, IAM, monitoring, ).

## Architecture Internet
|
Internet Gateway
|
Route Table (0.0.0.0/0 -> IGW)
|
Public Subnet (10.0.1.0/24)
|
EC2 Instance (Security Group: SSH + HTTP)
|
VPC (10.0.0.0/16) ## What This Creates
- 1 VPC
- 1 public subnet
- 1 internet gateway
- 1 route table + association
- 1 security group (allows SSH port 22, HTTP port 80)
- 1 EC2 instance

## Tech Stack
- Terraform
- AWS (VPC, EC2, IAM)

## Prerequisites
- Terraform installed (v1.x)
- AWS CLI configured with valid credentials
- An AWS account with permissions to create VPC/EC2 resources

## How to Run
```bash
terraform init
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
```

## Verify
```bash
terraform output instance_public_ip
curl http://<instance_public_ip>
```

## Clean Up
```bash
terraform destroy
```

## Notes / Lessons Learned
- Fixed a state persistence issue by ensuring Terraform commands always run
from the project root directory.
- Security group rules are open to 0.0.0.0/0 for learning purposes —
should be restricted to specific IPs in production.

## Author
Tain — IT/Network Engineer transitioning to Cloud Engineering


