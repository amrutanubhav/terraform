# creates an ec2 instance
resource "aws_instance" "this" {
  ami                     = data.aws_ami.image.image_id 
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