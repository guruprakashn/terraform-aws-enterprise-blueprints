variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string

  validation {
    condition = contains(
      ["dev", "test", "uat", "prod"],
      var.environment
    )
    error_message = "Environment must be dev, test, uat or prod."
  }
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "availability_zones" {
  description = "Availability Zones"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs"
  type        = list(string)

  validation {
    condition = length(var.public_subnet_cidrs) == length(var.availability_zones)

    error_message = "Number of public subnets must match number of availability zones."
  }
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs"
  type        = list(string)

  validation {
    condition = length(var.private_subnet_cidrs) == length(var.availability_zones)

    error_message = "Number of private subnets must match number of availability zones."
  }
}

variable "common_tags" {
  description = "Common tags applied to all resources"

  type = map(string)

  default = {
    CreatedBy = "terraform"
  }
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway"

  type    = bool
  default = true
}