resource "aws_instance" "web" {
  count = var.create_ec2 ? 1:0
  ami           = "ami-00f7e5c52c0f43726"
  instance_type = "t2.micro"
  subnet_id = var.my_subnet_id
  tags = {
    Name = "${var.customer}-${var.env_name}-ec2"
  }
}