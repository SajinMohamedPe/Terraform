provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "EC2_second_instance" {
  source          = "./modules/compute"
  instance_type_2 = "t2.micro"
}