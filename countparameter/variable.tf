variable "instancetype" {
  type = string
  default = "t2.micro"
}
variable "ami_id" {
  default = "ami-03f65b8614a860c29"
}

variable "region" {
  type = map
  default = {
    us1 = "us-east-1a"
    us2 = "us-east-1b"
    us3 = "us-east-1c"
  }
}

variable "name_ec2" {
  type = list
  default = ["dev_ec2","stage_ec2","prod_ec2"]  
}
#other types = list ["abd", "sinf"]. map {a=1, b="simi"}, number