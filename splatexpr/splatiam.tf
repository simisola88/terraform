provider "aws" {
  region     = "us-west-2"
}

resource "aws_iam_user" "smile" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}
output "arns" {
  value = aws_iam_user.smile[*].arn
  
}