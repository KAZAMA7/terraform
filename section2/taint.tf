resource "aws_instance" "taint" {
  ami           = "ami-0800fc0fa715fdcfe"
  instance_type = "t2.micro"

  tags = {
    Name = "taint"
  }
}
