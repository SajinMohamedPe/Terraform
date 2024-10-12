resource "aws_instance" "terraform_demo_instance_2" {
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = var.instance_type_2

  tags = {
    Name = "terraform_demo_Linux_instance_2"
  }
}