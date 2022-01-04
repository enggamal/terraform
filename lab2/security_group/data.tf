data "aws_vpc" "this" {
  filter {
      name = "tag:Name"
      values = ["main_vpc"]
  }
}

data "aws_subnet" "this" {
  filter {
      name = "tag:Name"
      values = ["public_subnet"]
  }
}