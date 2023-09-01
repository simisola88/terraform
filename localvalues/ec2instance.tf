provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "dev" {
      ami = var.ami_id
        instance_type = var.instancetype
        tags = local.common_tags
}

resource "aws_instance" "prod" {
      ami = var.ami_id
        instance_type = var.instancetype
        tags = local.common_tags
        }