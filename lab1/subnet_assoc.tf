resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.main1.id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.main2.id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_route_table_association" "pure_private1" {
  subnet_id      = aws_subnet.main3.id
  route_table_id = aws_route_table.rt3.id
}

resource "aws_route_table_association" "pure_private2" {
  subnet_id      = aws_subnet.main4.id
  route_table_id = aws_route_table.rt3.id
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.main5.id
  route_table_id = aws_route_table.rt5.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.main6.id
  route_table_id = aws_route_table.rt5.id
}
