data "aws_ami" "my_ami" {
  most_recent      = true
  name_regex       = "LAB-Ami-With-Ansible-Installed"
#   owners           = ["self"]

}

