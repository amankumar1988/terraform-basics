# Create EC2
resource "aws_instance" "web" {
  ami                       = "ami-007fbb30bb8ade45b"
  instance_type             = "t3.micro"
  vpc_security_group_ids    = [aws_security_group.allow_ssh.id]

  tags = {
    Name        = "Terraform-Instance-Server-Name-2"
  }
}

# Print attribute

output "private_dns_of_Server" {
    value = aws_instance.web.private_dns
}

