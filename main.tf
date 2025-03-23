# main.tf
provider "aws" {
  region = var.region
}

module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet1_cidr = var.private_subnet1_cidr
  private_subnet2_cidr = var.private_subnet2_cidr
  region             = var.region
  project_name       = var.project_name
}

module "ec2" {
  source        = "./modules/ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.private_subnet1_id
  ami_id        = var.ami_id
  instance_type = var.instance_type
  project_name  = var.project_name
}

module "rds" {
  source           = "./modules/rds"
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = [module.vpc.private_subnet1_id, module.vpc.private_subnet2_id]
  vpc_cidr        = var.vpc_cidr
  db_instance_class = var.db_instance_class
  db_username     = var.db_username
  db_password     = var.db_password
  project_name    = var.project_name
}

