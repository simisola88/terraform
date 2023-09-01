provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "simi-ec2" {
      ami = "ami-03f65b8614a860c29"
        instance_type = "t2.micro"
        tags = {
            Name = "Simi-Test"
        }
        lifecycle {
          create_before_destroy = true
        }
        }