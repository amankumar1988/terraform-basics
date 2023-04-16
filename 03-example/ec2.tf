# Always start with declaring provider information first

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
  ami                       = "ami-007fbb30bb8ade45b"
  instance_type             = "t3.nano"
  
  tags = {
    Name        = "Terraform-Instance-Server-Name"
  }
}