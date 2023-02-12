module "ec2" {
  
   source = "./ec2"
   sg     = module.sg.sg-id 

}

module "sg" {
  
source = "./sg"

}

# output "public-dns" {

#   value = aws_instance.this.public_dns
  
# }