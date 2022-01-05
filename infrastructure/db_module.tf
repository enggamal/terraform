module "db" {
  source            = "./modules/db"
  aws_subnet1_id = module.subnet_module.the-id-of-subnet1
  aws_subnet2_id = module.subnet_module.the-id-of-subnet2
# subnet_ids   = [module.subnet_module.the-id-of-subnet1,module.subnet_module.the-id-of-subnet2]
  vpc_security_group_ids = module.my_sg.the-id-of-security-group


}