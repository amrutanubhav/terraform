terraform {
  backend "s3" {
    bucket = "b52-terraform-bucket"
    key    = "ec2/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
