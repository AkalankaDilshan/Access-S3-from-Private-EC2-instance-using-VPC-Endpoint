provider "aws" {
  region = "eu-north-1"
}


//VPC module 
module "VPC" {
  source               = "./modules/vpc"
  vpc_name             = "lab-VPC"
  cidr_block           = "192.168.0.0/16"
  availability_zones   = ["eu-north-1a"]
  public_subnet_cidrs  = ["192.168.1.0/24"]
  private_subnet_cidrs = ["192.168.3.30/24"]
}
