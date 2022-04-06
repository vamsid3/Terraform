terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "2.70.1"
    }
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  access_key  = "********"
  secret_key  = "********"
}

resource "aws_instance" "LinuxVM" {
  ami           = "ami-03e0b06f01d45a4eb"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

