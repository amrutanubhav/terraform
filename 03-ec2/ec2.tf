
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.54.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# creates an ec2 instance
resource "aws_instance" "this" {
  ami                     = "ami-00e87074e52e6c9f9"
  instance_type           = "t3.micro"

  tags = {
    Name = "Test server"
  }
}
