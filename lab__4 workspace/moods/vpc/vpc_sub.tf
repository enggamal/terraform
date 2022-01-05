provider "aws"  {
    region = "us-west-2"
}

resource "aws_vpc" "sub_main" {
  cidr_block = "${var.vpc_cider_block}"
 
    tags = {
    Name = "${var.customer}-${var.env_name}-VPC"
  }
}