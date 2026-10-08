provider "aws" {
  access_key = "xxxxx"
  secret_key = "xxxxxx"

  region = "us-east-1"
}

resource "aws_vpc" "name" {
  cidr_block = "10.1.0.0/16"
  

  tags = {
    Name = "my_vpc"
  }
}