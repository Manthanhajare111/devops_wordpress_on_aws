terraform {
  backend "s3" {
    bucket         = "exemplifi-wp-tfstate-CHANGE-ME-uniq"  # <--- use the bucket you created
    key            = "global/terraform.tfstate"
    region         = "ap-south-1"                           # <--- your region
    dynamodb_table = "exemplifi-wp-tf-lock"                 # <--- lock table from bootstrap
    encrypt        = true
  }

  required_version = ">= 1.5.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

provider "aws" { region = var.aws_region }

# Helpful default tags
resource "aws_default_tags" "common" {
  tags = {
    Project = "Exemplifi WebOps"
    Managed = "Terraform"
  }
}
