provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_instance" "terraform_demo_instance" {
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = var.instance_type

  tags = {
    Name = "terraform_demo_Linux_instance"
  }
}