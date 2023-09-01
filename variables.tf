variable "user" {
  type    = string
  default = "ec2-user"
}
variable "connectiontype" {
  type    = string
  default = "ssh"
}
variable "ami_id" {
  type        = string
  description = "Ami ID"
  default     = "ami-0ca285d4c2cda3300"
}
variable "instancetype" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}
variable "keyname" {
  type        = string
  description = "SSh key name"
  default     = "terraform-key"
}
variable "sg_ports" {
  type        = list(number)
  description = "List of ports"
  default     = [443, 80]
}
variable "vpn_ip" {
  type        = string
  description = "List of ports"
  default     = "0.0.0.0/0"
}