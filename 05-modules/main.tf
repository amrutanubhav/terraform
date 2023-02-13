module "ec2" {
  
   source = "./ec2"
   sg     = module.sg.sg-id 

}

module "sg" {
  
source = "./sg"

}

output "public-dns" {

  value = module.ec2.public_dns
  
}