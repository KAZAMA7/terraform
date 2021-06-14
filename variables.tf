variable "instance_name" {
  type = list(any)
}

variable "is_dev" {
  type = bool
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "sg_ingress_ports" {
  type    = list(number)
  default = [443, 80, 22, 9200, 9100, 8080, 5000, 8090]
}

variable "sg_egress_ports" {
  type    = list(number)
  default = [111, 888, 222]
}

