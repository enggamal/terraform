module "my_sg" {
  source    = "./modules/sg"
  my_vpc_id = module.vpc_module.the-id-of-vpc

}