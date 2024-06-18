# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block by Local
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  
   region = "eu-west-1"
   
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0776c814353b4814d" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
tags = {
    Name = "NewServerName"
  }
}
