resource "aws_route_table" "rt1" {
  vpc_id = var.vpcc

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "${var.customer}-${var.env_name}-rt_public"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpcc

  tags = {
    Name = "${var.customer}-${var.env_name}-main"
  }
}