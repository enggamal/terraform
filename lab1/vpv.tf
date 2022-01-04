provider "aws"  {
    region = "us-west-2"
}
resource "aws_vpc" "main" {
  cidr_block = var.big_cider_block
    tags = {
    Name = "${var.customer}-${var.env}-MainVpc" 
    }
}
# elastic ip cooostly
resource "aws_eip" "Nat" {
  vpc      = true
}

resource "aws_nat_gateway" "mainNat" {
  allocation_id = aws_eip.Nat.id
  subnet_id     = aws_subnet.main1.id

  tags = {
    Name = "${var.customer}-${var.env}-gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}

# igw
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.customer}-${var.env}-main"
  }
}