# creates an ec2 instance
resource "aws_instance" "this" {
  ami                     = "ami-0c1d144c8fdd8d690" # other ami is ami-00e87074e52e6c9f9
  instance_type           = "t2.micro" # t3.medium
  vpc_security_group_ids  = [var.sg]

  tags = {
    Name = "Terraform server"
  }
}

variable "sg" {}