provider "aws" {
  region = "us-east-1"
}

# creates an ec2 instance
resource "aws_instance" "this" {
  ami                     = "ami-0c1d144c8fdd8d690" # other ami is ami-00e87074e52e6c9f9
  instance_type           = "t2.micro" # t3.medium
  count = length(var.envs) ##gives length of envs

  tags = {
    Name = var.envs[count.index]
  }
}

output "public_ip" {

    value = aws_instance.this.*.public_ip
  
}

variable "envs" {

    default = ["dev","qa","prod","stage"]
  
}