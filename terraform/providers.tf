terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Optional S3 backend – configure once you create the bucket & table
  # backend "s3" {
  #   bucket         = "YOUR-TF-STATE-BUCKET"
  #   key            = "aws-multitier-homelab/terraform.tfstate"
  #   region         = "us-west-2"
  #   dynamodb_table = "YOUR-TF-LOCK-TABLE"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.aws_region
}
