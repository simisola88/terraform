provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "simi-ec2" {
      ami = var.ami_id
        instance_type = var.instancetype
        tags = {
            Name = var.name_ec2[count.index]
        }
        count = 3
        }