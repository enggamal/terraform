module "subnet_module" {
  source              = "./modules/subnet"
  subnet_cider_block1 = "10.1.1.0/24"
  subnet_cider_block2 = "10.1.2.0/24"
  my_vpc_id           = module.vpc_module.the-id-of-vpc
}