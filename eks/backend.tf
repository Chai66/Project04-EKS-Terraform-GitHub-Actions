terraform {
  required_version = "~> 1.13.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-pratice-online"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "terraform-locking"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
