provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "myec2" {
  ami           = var.ami_id
  instance_type = var.instancetype
  key_name      = var.keyname

  connection {
    type        = var.connectiontype
    user        = var.user
    private_key = file("./terraform-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      # Updating with the latest command for Amazon Linux machine
      "sudo yum install -y nginx",
      "sudo systemctl start nginx"
    ]
  }
}

resource "aws_security_group" "allow_multiple_ports" {
  name        = "allow port multiple ports"
  description = "Allow inbound traffic"

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = [var.vpn_ip]
    }
  }
  egress {
    description = "Outbound rules"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}