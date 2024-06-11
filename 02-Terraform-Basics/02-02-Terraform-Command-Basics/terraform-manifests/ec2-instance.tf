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
  #region  = "eu-west-1"
   #region  = "eu-west-1"
   #changes by headless state
   region = "eu-west-1"
   #added after local user setup
}

######### Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0be2609ba883822ec" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
