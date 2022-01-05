resource "aws_security_group" "sg" {
  description = "Allow TLS inbound traffic"
  vpc_id      = var.my_vpc_id
  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${var.subnet_cider_block}"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.customer}-${var.env_name}-security_group"
  }
}