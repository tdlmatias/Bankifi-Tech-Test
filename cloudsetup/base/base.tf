provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "base" {
  ami           = "ami-01f5fbceb7a9fa4d0"
  instance_type = "t2.micro"
}

resource "aws_eip" "base" {
  instance = "${aws_instance.base.id}"
  vpc      = true
}
