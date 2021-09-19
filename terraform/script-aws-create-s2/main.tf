variable "environment" {
  type = string

  description = ""
}

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

  region = var.aws_region

  profile = var.aws_profile

}

resource "aws_instance" "web" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
