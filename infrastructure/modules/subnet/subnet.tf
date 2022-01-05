resource "aws_subnet" "public1" {
  vpc_id     = var.my_vpc_id
  cidr_block = "${var.subnet_cider_block1}"
  availability_zone = "us-west-2a"
      tags = {
    Name = "${var.customer}-${var.env_name}-subnet_public1"
  }
}
resource "aws_subnet" "public2" {
  vpc_id     = var.my_vpc_id
  cidr_block = "${var.subnet_cider_block2}"
  availability_zone = "us-west-2b"
      tags = {
    Name = "${var.customer}-${var.env_name}-subnet_public2"
  }
}
