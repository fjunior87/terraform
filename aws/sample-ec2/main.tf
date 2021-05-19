provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "sample_ec2" {
  ami = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Francisco - Terraform"
    "ttl" = "2"
    "usage" = "worker"
  }
}