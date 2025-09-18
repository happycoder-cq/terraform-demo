

resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  description = "Allow inbound SSH"
  vpc_id = "vpc-0fb70364cc2034e50"

  ingress {
    description = "SSH"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 22
    to_port = 23
    protocol = "tcp"
  }

  egress {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }

}

