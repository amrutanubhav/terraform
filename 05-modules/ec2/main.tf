# creates an ec2 instance
resource "aws_instance" "this" {
  ami                     = data.aws_ami.lab-image.image_id      # other ami is ami-00e87074e52e6c9f9  # using data source to source aws ami
  instance_type           = "t2.micro" # t3.medium
  vpc_security_group_ids  = [var.sg]

  tags = {
    Name = "Terraform server"
  }
}

variable "sg" {}

output "public_dns" {

  value = aws_instance.this.public_dns
  
}