provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "dev" {
      ami = data.aws_ami.app_ami.id
        instance_type = var.instancetype
        tags = local.common_tags
}

resource "aws_instance" "prod" {
      ami = data.aws_ami.app_ami.id
        instance_type = var.instancetype
        tags = local.common_tags
        }