
resource "aws_instance" "ProdInstance" {
  ami           = "ami-0800fc0fa715fdcfe"
  instance_type = "t2.micro"
  count = var.is_dev == true ? 1 : 0

}

resource "aws_instance" "DevInstance" {
  ami           = "ami-0800fc0fa715fdcfe"
  instance_type = "t2.nano"
  count = var.is_dev == false ? 1 : 0

}
