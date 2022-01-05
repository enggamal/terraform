resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "gamalnafel"
  password             = "gamalnafel123"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  vpc_security_group_ids = [var.vpc_security_group_ids]
  db_subnet_group_name   = aws_db_subnet_group.default.id
  tags = {
    Name = "${var.customer}-${var.env_name}-DB"
  }
}
resource "aws_db_subnet_group" "default" {
  name        = "main_subnet_group"
  description = "Our main group of subnets"
  subnet_ids  = [var.aws_subnet1_id, var.aws_subnet2_id]
}