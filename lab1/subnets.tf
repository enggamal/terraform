# public subnets
resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public1_subnet_cider_block
  availability_zone = "us-west-2a"
  tags = {
    Name = "${var.customer}-${var.env}-Public_subnet1"
  }
}
resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public2_subnet_cider_block
  availability_zone = "us-west-2b"
  tags = {
    Name = "${var.customer}-${var.env}-Public_subnet2"
  }
}
# private subnets with nat 

resource "aws_subnet" "main3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private3_subnet_cider_block
  availability_zone = "us-west-2a"
  tags = {
    Name = "${var.customer}-${var.env}-private_subnet1"
  }
}

resource "aws_subnet" "main4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private4_subnet_cider_block
  availability_zone = "us-west-2b"
  tags = {
    Name = "${var.customer}-${var.env}-private_subnet2"
  }
}
# private subnets without nat

resource "aws_subnet" "main5" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private5_subnet_cider_block
  availability_zone = "us-west-2a"
  tags = {
    Name = "${var.customer}-${var.env}-private_subnet3"
  }
}

resource "aws_subnet" "main6" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private6_subnet_cider_block
  availability_zone = "us-west-2b"
  tags = {
    Name = "${var.customer}-${var.env}-private_subnet4"
  }
}
