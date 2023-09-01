provider "aws" {
  region     = "us-west-2"
}

resource "aws_security_group" "allow_multiple_ports" {
  name        = "allow port multiple ports"
  description = "Allow inbound traffic"

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
        from_port        = port.value
        to_port          = port.value
        protocol         = "tcp"
        cidr_blocks      = [var.vpn_ip]
        }
    }
  dynamic "egress" {
    for_each = var.sg_ports
    content {
        from_port        = egress.value
        to_port          = egress.value
        protocol         = "tcp"
        cidr_blocks      = [var.vpn_ip]
        }
    }
}