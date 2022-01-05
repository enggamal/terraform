variable "subnet_cider_blocks" {
  type = list
   default= ["10.1.1.0/24","10.1.2.0/24","10.1.3.0/24"]
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