provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

resource "aws_iam_group" "example_group" {
  name = "orange"
}

resource "aws_iam_user_group_membership" "example_membership" {
  user       = aws_iam_user.example_user.name
  groups     = [aws_iam_group.example_group.name]
}

resource "aws_iam_user" "example_user" {
  name = "banana"
}

