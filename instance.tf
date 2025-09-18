#
# # Fetch default VPC and subnet for simplicity
# data "aws_vpc" "default" {
#   default = true
# }
#
# data "aws_subnet_ids" "default" {
#   vpc_id = data.aws_vpc.default.id
# }
# # Security group to allow SSH
# resource "aws_security_group" "allow_ssh" {
#   name        = "allow_demo"
#   description = "Allow SSH inbound traffic"
#   vpc_id      = data.aws_vpc.default.id
#
#   ingress {
#     description = "SSH"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # for demo only, restrict in production
#   }
#
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }
#
#
# # EC2 Instance
# resource "aws_instance" "example" {
#   ami           = "ami-0c1c30571d2dae5c9" # Amazon Linux 2 in eu-west-1 (check latest)
#   instance_type = "t2.micro"
#
#   subnet_id              = tolist(data.aws_subnet_ids.default.ids)[0]
#   vpc_security_group_ids = [aws_security_group.allow_ssh.id]
#
#   tags = {
#     Name = "example-instance"
#   }
# }
#
#
#
