provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  count         = 2
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  tags = {
    name = "ec2-instance"
  }

}