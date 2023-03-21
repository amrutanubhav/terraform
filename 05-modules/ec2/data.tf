data "aws_ami" "image" {
  most_recent      = true
  name_regex       = "b52-ansible-dev-20Jan2023"
  owners           = ["355449129696"]
}






