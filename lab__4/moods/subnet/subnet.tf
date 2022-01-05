resource "aws_subnet" "public" {
  count = length(var.subnet_cider_blocks)
  vpc_id     = var.my_vpc_id
  cidr_block = var.subnet_cider_blocks[count.index]
  availability_zone = "us-west-2a"
      tags = {
    Name = "${var.customer}-${var.env_name}-subnet_public1"
  }
}

