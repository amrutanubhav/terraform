# creates an ec2 instance
# resource "aws_instance" "this" {
#   ami                     = data.aws_ami.image.image_id 
#   instance_type           = "t2.micro" # t3.medium
#   vpc_security_group_ids  = [var.sg]
#   tags = { 
#     Name = "Terraform server"
#  }

resource "aws_spot_instance_request" "spot_server" {
  ami           = data.aws_ami.image.image_id
  instance_type = "t3.micro"
  wait_for_fulfillment = true #job completes only if request is complete, else it will wait for 10mins and it will fail
  vpc_security_group_ids  = [aws_security_group.allow_all.id]

    provisioner "remote-exec" {

              connection {
                type     = "ssh"
                user     = "centos"
                password = "DevOps321"
                host     = self.public_ip
              }

              inline = [
                "ansible-pull -U https://github.com/amrutanubhav/ansible-amrut.git -e component=${var.component} -e env=dev -e version=${var.APP_VERSION} -e DB_PASSWORD=RoboShop@1 robot-pull.yml"
              ]
      }

      
  tags = {
    Name = var.component
  }
}
  
# variable "component" {}