locals {

  default_tags = merge(
    {
      Name            = var.vpc_name
      Environment     = var.environment
      ManagedBy       = "Terraform"
      TerraformModule = "vpc"
    },
    var.common_tags
  )

}