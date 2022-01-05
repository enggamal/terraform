terraform {
   backend "s3" {
       bucket = "gamal"
       key    = "prod/terraform.tfstate"
       region = "us-west-2"
       encrypt = true
   } 
}