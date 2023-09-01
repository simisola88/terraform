provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "dev" {
      ami = var.ami_id
        instance_type = var.instancetype
        tags = {
            Name = var.name_ec2[count.index]
        }
        count = var.istest == true ? 2 : 0
        }

resource "aws_instance" "prod" {
      ami = var.ami_id
        instance_type = var.instancetype
        tags = {
            Name = var.name_ec2[2]
        }
        count = var.istest == false ? 1 : 0
        }