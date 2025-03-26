provider "aws" {
  region = "eu-north-1"
}


//VPC module 
module "main_vpc" {
  source               = "./modules/vpc"
  vpc_name             = "lab-VPC"
  cidr_block           = "192.168.0.0/16"
  availability_zones   = "eu-north-1a"
  public_subnet_cidrs  = "192.168.1.0/24"
  private_subnet_cidrs = "192.168.3.0/24"
}

//Secuiry group 
module "secuiry_group" {
  source              = "./modules/security-group"
  security_group_name = "ec2-web-sg"
  vpc_id              = module.main_vpc.vpc_id
}

module "web_instace-bastion" {
  source             = "./modules/ec2"
  instance_name      = "Bastion-ec2"
  instance_type      = "t3.micro"
  subnet_id          = module.main_vpc.public_subnet_id
  ec2_security_group = module.secuiry_group.sg_id
  ebs_volume_type    = "gp2"
  ebs_volume_size    = 8
  key_pair_name      = "moba-key"
}

module "web_instace-application" {
  source             = "./modules/ec2"
  instance_name      = "Application-ec2"
  instance_type      = "t3.micro"
  subnet_id          = module.main_vpc.private_subnet_id
  ec2_security_group = module.secuiry_group.sg_id
  ebs_volume_type    = "gp2"
  ebs_volume_size    = 8
  key_pair_name      = "moba-key"
}
