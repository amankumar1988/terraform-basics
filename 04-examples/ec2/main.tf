# Create EC2
resource "aws_instance" "web" {
  ami                       = "ami-007fbb30bb8ade45b"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = [var.sg_id]

  tags = {
    Name        = "Terraform-Instance-Server-Name"
  }
}


variable "sg_id" {}

# Print attribute

output "private_dns" {
    value = aws_instance.web.private_dns
}
