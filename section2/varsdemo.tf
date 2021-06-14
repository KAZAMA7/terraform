resource "aws_security_group" "vars_sg" {
  name        = "vars_sg"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.host_ip]
  }


  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.host_ip]
  }


  ingress {
    description      = "TLS from VPC"
    from_port        = 21
    to_port          = 21
    protocol         = "tcp"
    cidr_blocks      = [var.host_ip]
  }


  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.host_ip]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "vars_sg"
  }
}
