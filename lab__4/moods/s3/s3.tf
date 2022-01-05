resource "aws_s3_bucket" "bbbb" {
  bucket = "my-gamal-test-bucket"
  acl    = "private"

  tags = {
    Name = lower("${var.customer}-${var.env_name}-bucker")
  }
}