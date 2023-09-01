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
output "name" {
  value = aws_iam_user.smile[*].name
  }

output "combined" {
  value =   zipmap(aws_iam_user.smile[*].name, aws_iam_user.smile[*].arn)
}