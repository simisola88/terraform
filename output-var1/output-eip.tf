provider "aws" {
  region     = "us-west-2"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "Public_IP1" {
  value = aws_eip.lb.public_ip
}