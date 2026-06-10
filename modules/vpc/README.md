# AWS VPC Module

## Purpose

This module creates a production-ready AWS VPC with:

- VPC
- Internet Gateway
- Public Subnets
- Private Subnets
- Route Tables

## Architecture

Internet
   |
Internet Gateway
   |
VPC
├── Public Subnet A
├── Public Subnet B
├── Private Subnet A
└── Private Subnet B

Internet
   |
Internet Gateway
   |
Public Route Table
   |
VPC
├── Public Subnet A
├── Public Subnet B
├── Private Subnet A
└── Private Subnet B

Internet
    |
Internet Gateway
    |
+-------------------+
| Public Route Table|
+-------------------+
    |
Public Subnets
    |
NAT Gateway
    |
+--------------------+
| Private Route Table|
+--------------------+
    |
Private Subnets

## Inputs

| Variable | Description |
|-----------|-------------|
| vpc_name | Name of the VPC |
| environment | Environment Name |
| vpc_cidr | VPC CIDR Block |
| public_subnet_cidrs | Public Subnets |
| private_subnet_cidrs | Private Subnets |

## Outputs

| Output | Description |
|---------|-------------|
| vpc_id | AWS VPC ID |
| vpc_cidr | VPC CIDR |

## Routing

Public subnets are associated with a route table that sends internet-bound traffic through the Internet Gateway.

Destination:
0.0.0.0/0

Target:
Internet Gateway

## NAT Gateway

Provides outbound Internet access for resources in private subnets while keeping them inaccessible from the public Internet.

## Production Use Cases

- Amazon EKS Worker Nodes
- Private EC2 Instances
- Internal APIs
- Application Servers