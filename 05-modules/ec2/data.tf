data "aws_ami" "ami_id" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["self"]

}
