resource "aws_instance" "module" {
  ami           = "ami-0800fc0fa715fdcfe"
  instance_type = var.instance_type

  tags = {
    Name = "module"
  }
}
