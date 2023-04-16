# Create EC2
resource "aws_instance" "web" {
  ami                       = data.aws_ami.my_ami.image_id
  instance_type             = "t3.micro"
  vpc_security_group_ids    = [var.sg]

  tags = {
    Name        = "Terraform-Instance-Server-Name"
  }
}


variable "sg" {}

# Print attribute

output "private_dns" {
    value = aws_instance.web.private_dns
}
