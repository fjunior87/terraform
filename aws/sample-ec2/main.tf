provider "aws" {
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "sample_ec2" {
  ami = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  tags = {
    "Name" = "Francisco - Terraform",
    "ttl" = "2",
    "usage" = "worker"
  }
}