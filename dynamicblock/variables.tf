variable "vpn_ip" {
    type = string
    default = "0.0.0.0/0"
  
}
variable "sg_ports" {
    type = list(number)
    description = "List of ports"
    default = [ 443,80,8080,8087,8088 ]
}