variable "domain" {
  type = string
  default = "przechrzta.me"
}

variable "ami_id" {
  default = "ami-0aa60d8c7f2d70f7a"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "region" {
  type = string
  default = "eu-west-1"
}


