provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "terraform-demo" {
    ami = "ami-03e0b06f01d45a4eb"
    key_name = var.key_name
    instance_type = var.instance_type
    tags = {
        Name = "TF"
        Env = "dev"
    }
}

