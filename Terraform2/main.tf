provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

// dev resources
resource "aws_instance" "workspace_vm_dev" {
  count = terraform.workspace == "dev" ? 1 : 0
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = var.instance_type

  tags = {
    Name = "terraform_demo_Linux_workspace_dev_instance"
  }
}

resource "aws_instance" "workspace_vm_qa" {
  count = terraform.workspace == "qa" ? 1 : 0
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = var.instance_type

  tags = {
    Name = "terraform_demo_Linux_workspace_qa_instance"
  }
}