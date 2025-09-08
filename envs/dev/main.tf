module "networking" {
  source               = "../../modules/networking"
  cidr_block           = "10.0.0.0/16"
  vpc_name             = "acme-vpc"
  public_subnet_count  = 2
  private_subnet_count = 2
}
#Testing change2
# Triggering a plan for demo

module "security" {
  source  = "../../modules/security"
  vpc_id  = module.networking.vpc_id
  sg_name = "acme-web-sg"
}

module "compute" {
  source = "../../modules/compute"

  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.networking.public_subnet_ids[0]
  security_group_ids = [module.security.security_group_id]
  key_name           = var.key_name
}
