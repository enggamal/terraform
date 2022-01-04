resource "aws_instance" "myec2_1" {
  ami           = "ami-00f7e5c52c0f43726" # us-west-2
  instance_type = "t2.micro"
  availability_zone = "us-west-2a"
  subnet_id = aws_subnet.main5.id
 
    tags = {
    Name = "${var.customer}-${var.env}-ec21"
  }
 
}
resource "aws_instance" "myec2_2" {
  ami           = "ami-00f7e5c52c0f43726" # us-west-2
  instance_type = "t2.micro"
  availability_zone = "us-west-2b"
  subnet_id = aws_subnet.main6.id
 
    tags = {
    Name = "${var.customer}-${var.env}-ec22"
  }
 
}