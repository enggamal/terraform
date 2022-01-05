module "routetable" {
  source       = "./modules/routtables"
  vpcc = module.vpc_module.the-id-of-vpc
}