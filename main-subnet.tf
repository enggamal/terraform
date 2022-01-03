provider "aws"  {
    region = "us-west-2"
}

resource "aws_subnet" "public" {
  vpc_id     = data.aws_vpc.this.id
  cidr_block = "${var.public_subnet_cider_block}"
  availability_zone = "us-west-2a"
  tags = {
    Name = "public_subnet"
  }
}

