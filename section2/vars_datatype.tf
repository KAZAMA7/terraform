resource "aws_iam_user" "demo_user" {
  name = var.instance_name
  path = "/system/"

  tags = {
    name = var.instance_name
  }
}
