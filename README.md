# Terraform AWS Enterprise Blueprints

Production-ready AWS Terraform modules with enterprise security, governance, and AWS best practices.

## Overview

This repository contains reusable AWS Terraform modules designed using enterprise-grade standards.

Each module is:

- Tested in AWS
- Versioned using GitHub Releases
- Documented with step-by-step guides
- Built for reusability
- Designed with security and governance in mind

---

## Current Modules

| Module | Version | Status |
|----------|----------|----------|
| AWS VPC Module | v0.1.0 | Stable |

---

## Features

- Multi-AZ architecture
- Public and Private subnet design
- Enterprise tagging standards
- Reusable Terraform modules
- Detailed documentation
- Real AWS deployment testing
- Open-source and community driven

---

## Repository Structure

```text
terraform-aws-enterprise-blueprints/

├── docs/
├── examples/
├── modules/
│   └── vpc/
├── README.md
└── LICENSE
```

---

## Quick Start

Clone the repository:

```bash
git clone https://github.com/guruprakashn/terraform-aws-enterprise-blueprints.git
```

Navigate to the example:

```bash
cd examples/vpc-basic
```

Initialize Terraform:

```bash
terraform init
```

Validate:

```bash
terraform validate
```

Plan:

```bash
terraform plan
```

Deploy:

```bash
terraform apply
```

Destroy:

```bash
terraform destroy
```

---

## Documentation

### Getting Started

- Terraform Basics
- First Deployment Guide
- Deployment Verification
- Common Troubleshooting

### AWS Networking

- What is a VPC?
- What is a Subnet?
- What is an Internet Gateway?
- What is a NAT Gateway?
- What is a Route Table?

---

## Releases

### v0.1.0

AWS VPC Module

Includes:

- VPC
- Internet Gateway
- NAT Gateway
- Public Subnets
- Private Subnets
- Route Tables
- Route Associations
- Enterprise Tags

Status:

✅ Tested  
✅ Deployed  
✅ Destroyed Successfully

---

## Roadmap

### v0.2.0

Enterprise Security Group Module

### v0.3.0

Enterprise S3 Module

### v0.4.0

Enterprise EC2 Module

### v0.5.0

Enterprise IAM Module

### v0.6.0

Application Load Balancer Module

### v0.7.0

RDS Module

### v0.8.0

EKS Module

### v1.0.0

Enterprise AWS Foundation Release

---

## Author

**Guruprakash Nagaraj**

Associate Director & CISO | IT & Systems

---

## License

MIT License
