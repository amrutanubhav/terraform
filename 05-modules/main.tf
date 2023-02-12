module "ec2" {
  
   source = "./ec2"

}

module "sg" {
  
source = "./sg"

}

ooutput "public-dns" {

  value = aws_instance.this.public_dns
  
}