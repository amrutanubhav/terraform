terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.59.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

#remotestatefile
terraform {
  backend "s3" {
    bucket = "b52-terraform-bucket"
    key    = "ec2/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
