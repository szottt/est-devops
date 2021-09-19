terraform {
  required_version = "1.0.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.59.0"
    }
  }
}

provider "aws" {

  region = "us-east-1"

}

resource "aws_s3_bucket" "my-test-buckert" {
  bucket = "my-tf-test-bucket1231412301298371124"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManegedBy   = "Terraform"
    Owner       = "Igor Szot"
    UpdatedAt   = "2021-09-19"
  }
}

