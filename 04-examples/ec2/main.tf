# Create EC2
resource "aws_instance" "web" {
  ami                       = data.aws_ami.my_ami.image_id
  instance_type             = "t3.micro"
  vpc_security_group_ids    = [var.sg]

  tags = {
    Name        = "Terraform-Instance-Server-Name"
  }

# Declaring the remote provisioner inside the resource
  provisioner "remote-exec" {

    connection {                  // establishes connectivity to the created machine
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.private_ip
  }

    inline = [
      "ansible-pull -U https://github.com/amankumar1988/ansible.git robot-pull.yaml -e ENV=dev -e COMPONENT=mongodb"
    ]
  }
}

variable "sg" {}

# Print attribute

output "private_dns" {
    value = aws_instance.web.private_dns
}


