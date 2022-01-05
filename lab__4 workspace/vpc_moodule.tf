module "vpc_module" {
  source          = "./moods/vpc"
  customer        = "vodafone"
  env_name        = "global"
  vpc_cider_block = "10.1.0.0/16"
}

provider "aws"  {
    region = "us-west-2"
}