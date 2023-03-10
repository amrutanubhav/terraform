provider "aws" {
  region = "us-east-1"
}

# creates an ec2 instance
resource "aws_instance" "this" {
  ami                     = "ami-0c1d144c8fdd8d690" # other ami is ami-00e87074e52e6c9f9
  instance_type           = "t2.micro" # t3.medium
  vpc_security_group_ids  = [aws_security_group.allow_ports.id]

  tags = {
    Name = "Terraform server"
  }
}

#security group create

resource "aws_security_group" "allow_ports" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"

  ingress {
    description      = "ssh from public"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    description      = "http from public"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    description      = "81 from public"
    from_port        = 81
    to_port          = 81
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh_all"
  }
}

#print public ip

output "public-dns" {

  value = aws_instance.this.public_dns
  
}

