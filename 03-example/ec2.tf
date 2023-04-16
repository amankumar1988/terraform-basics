# Always start with declaring provider information first

provider "aws" {
    region = "us-east-1"
}

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

# Create security group

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}