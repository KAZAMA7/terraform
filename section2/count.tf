// ## when vars are not used

resource "aws_iam_user" "demo_user1" {
  name = "user${count.index}"
  path = "/system/"
  count = 4
}


// ### when vars are used
resource "aws_iam_user" "demo_user" {
  name = var.instance_name[count.index]
  path = "/system/"
  count = 4
}
