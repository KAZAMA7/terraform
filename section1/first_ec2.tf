terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

resource "aws_instance" "First_instance" {
  ami           = "ami-0800fc0fa715fdcfe"
  instance_type = "t2.micro"

  tags = {
    Name = "First_instance"
  }
}

