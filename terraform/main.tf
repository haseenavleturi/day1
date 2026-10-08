terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.66.0"
    }
  }
}

provider "aws" {
 region = "us-east-1"
}
resource "aws_instance" "terraform" {
  ami = "ami-066c4849e6b3a1e3d"
  instance_type = "t3.micro"
}

tags{
    Name="terraform"
}