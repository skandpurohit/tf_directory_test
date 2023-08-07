resource "aws_instance" "app2" {
  ami           = "ami-00970f57473724c10"
  instance_type = "t3.micro"

  #vpc_security_group_ids = ["aws_security_group.sg_app2.id"]

  subnet_id = "subnet-0a9eef239e622fb83"
 
  tags = {
    Name = "App2"
  }
}

# resource "aws_security_group" "sg_app2" {
#   vpc_id = "vpc-013665efd564c85f2"

#   name        = "allow_app2"
#   description = "Allow TLS inbound traffic"

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks = ["98.38.106.144/32"]
#     ipv6_cidr_blocks = []
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "app2"
#   }
# }