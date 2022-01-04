# vpc 
variable "big_cider_block" {
  type = string
}

### for tags names
variable "customer" {
  type = string
  default = "vois"
}
variable "env" {
  type = string
  default = " prod"
}
# for subnets

variable "public1_subnet_cider_block" {
  type = string
}

variable "public2_subnet_cider_block" {
  type = string
}
# private subnets without nat
variable "private3_subnet_cider_block" {
  type = string
}
variable "private4_subnet_cider_block" {
  type = string
}
# private subnets  nat
variable "private5_subnet_cider_block" {
  type = string
}
variable "private6_subnet_cider_block" {
  type = string
}
