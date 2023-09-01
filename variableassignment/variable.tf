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

variable "type" {
  type = list
  defdefault = ["t2.nano","t2.micro","t2.medium"]  
}
#other types = list ["abd", "sinf"]. map {a=1, b="simi"}, number