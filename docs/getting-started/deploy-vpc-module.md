# Deploying the AWS VPC Module

## Step 1 - Verify AWS CLI

Run:

aws --version

Expected Output:

aws-cli/2.x.x

## Step 2 - Verify AWS Credentials

Run:

aws sts get-caller-identity

Expected Output:

AWS Account ID
IAM User ARN

## Step 3 - Verify Terraform

Run:

terraform version

Expected Output:

Terraform v1.x.x

## Step 4 - Navigate to Example

cd examples/vpc-basic

## Step 5 - Initialize Terraform

terraform init

Expected Result:

Terraform has been successfully initialized

## Step 6 - Validate Configuration

terraform validate

Expected Result:

Success! The configuration is valid.

## Step 7 - Review Deployment Plan

terraform plan

Review all resources carefully before deployment.

## Step 8 - Deploy

terraform apply

Type:

yes

Terraform will create the VPC infrastructure.

## Step 9 - Verify Resources

Verify the following in AWS Console:

VPC
Subnets
Internet Gateway
Route Tables
NAT Gateway

## Step 10 - Destroy Resources

terraform destroy

Type:

yes

Terraform will remove all created resources.
