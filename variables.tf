
variable "domain" {
  type = string
  default = "craigdunn.net"
}


variable "instance_name" {
  type = string
  default = "terraform-demo"
}

variable "ami_id" {
  type = string
  default = "ami-06d94a781b544c133"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "subnet" {
  type = string
  default = "subnet-01a4fdab38dabcf25"
}

variable "aws_keypair" {
  type = string
  default = "bolt"
}

variable "region" {
  type = string
  default = "eu-west-1"
}


