#security group create

resource "aws_security_group" "allow_all" {
  name        = "allow_${var.component}"
  description = "Allow all inbound traffic"

  ingress {
    description      = "ssh from public"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_${var.component}"
  }
}