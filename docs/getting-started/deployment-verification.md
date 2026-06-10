# Deployment Verification

After terraform apply verify:

## VPC

- VPC created
- Correct CIDR

## Public Subnets

- Public Subnet 1
- Public Subnet 2

Verify:

Auto Assign Public IP = Enabled

## Private Subnets

- Private Subnet 1
- Private Subnet 2

Verify:

Auto Assign Public IP = Disabled

## Internet Gateway

Verify attached to VPC.

## NAT Gateway

Verify status = Available.

## Tags

Verify:

Environment
ManagedBy
Owner
Project
TerraformModule