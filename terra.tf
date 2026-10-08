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

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.name.id

  availability_zone = "us-east-1c"

  cidr_block = "10.1.2.0/24"

  tags = {
    Name = "my-subnet2"
  }
}