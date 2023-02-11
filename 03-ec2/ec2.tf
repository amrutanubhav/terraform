
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# creates an ec2 instance
resource "aws_instance" "this" {
  ami                     = "DevOps-LabImage-CentOS7"
  instance_type           = "t3.micro"
}
