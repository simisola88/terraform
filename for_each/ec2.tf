provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "simi-ec2" {
      ami = "ami-03f65b8614a860c29"
      for_each = {
        key1 = "t2.micro"
        key2 = "t2.medium"
      }
      instance_type = each.value
      key_name = each.key
      tags = {
          Name = each.value
      }
    }
resource "aws_iam_user" "iam" {
  for_each = toset(["user-0","user-01", "user-03"])
  name = each.key
  
}