# Create EC2
resource "aws_instance" "web" {
  ami                       = "ami-007fbb30bb8ade45b"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = [var.sg]

  tags = {
    Name        = "Terraform-Instance-Server-Name-2"
  }
}


variable "sg" {}

# Print attribute

output "private_dns_of_Server" {
    value = aws_instance.web.private_dns
}
