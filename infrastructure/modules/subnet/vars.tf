variable "subnet_cider_block1" {
  type = string
   default= "10.1.2.0/24"
}
variable "subnet_cider_block2" {
  type = string
   default= "10.1.3.0/24"
}
variable "my_vpc_id" {
    
}
variable "customer" {
  type = string
  default= "vois"
  
}
variable "env_name" {
  type = string
   default= "devops"
}