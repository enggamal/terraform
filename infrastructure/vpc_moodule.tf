module "vpc_module" {
  source          = "./modules/vpc"
  customer        = "vodafone"
  env_name        = "global"
  vpc_cider_block = "10.1.0.0/16"
}