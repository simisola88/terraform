variable "instancetype" {
  type = string
  default = "t2.micro"
}
variable "ami_id" {
  default = "ami-03f65b8614a860c29"
}

variable "name_ec2" {
  type = list
  default = ["dev","prod"]
}
locals {
  common_tags ={
    Owner = "DevSimi"
    service = "backend"
  }
}
#other types = list ["abd", "sinf"]. map {a=1, b="simi"}, number