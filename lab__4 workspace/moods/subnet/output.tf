output "the-id-of-subnet" {
   value = aws_subnet.public[*].id
}
