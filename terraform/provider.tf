terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "ami-factory/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.primary_region
  default_tags {
    tags = {
      Environment = "Production"
      Project     = "AMI Factory"
      ManagedBy   = "Terraform"
    }
  }
}

# Cross-region providers for multi-region AMI distribution
provider "aws" {
  alias  = "eu_west"
  region = "eu-west-1"
}

provider "aws" {
  alias  = "ap_southeast"
  region = "ap-southeast-1"
}