
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
  ami                     = "ami-0c1d144c8fdd8d690" # other ami is ami-00e87074e52e6c9f9
  instance_type           = "t2.micro" # t3.medium

  tags = {
    Name = "Test server"
  }
}

#print public ip

output "public-dns" {

  value = aws_instance.this.public_dns
  
}

