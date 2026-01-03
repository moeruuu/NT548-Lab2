provider "aws" {
  region = var.aws_region
  profile = "temp"
}

module "vpc" {
  source = "./modules/vpc"
  project_name = var.project_name
}

module "nat" {
  source = "./modules/nat"
  project_name = var.project_name
  public_subnet_id = module.vpc.public_subnet_id
}

module "ec2" {
  source           = "./modules/ec2"
  project_name     = var.project_name
  vpc_id           = module.vpc.vpc_id
  public_subnet_id = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id

  ami              = var.ec2_ami
  instance_type    = "t3.micro"
  key_name         = var.ec2_key_name
  my_ip_cidr       = var.my_ip_cidr
}

module "route_table" {
  source = "./modules/route_tables"
  project_name     = var.project_name
  vpc_id           = module.vpc.vpc_id
  internet_gateway_id = module.vpc.internet_gateway_id
  nat_gateway_id   = module.nat.nat_gateway_id
  public_subnet_id = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
}