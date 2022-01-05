module "ec2_module" {
  source       = "./moods/ec2"
  my_subnet_id = module.subnet_module.the-id-of-subnet[0]
}