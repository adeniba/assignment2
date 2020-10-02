provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "assignment2-simple-bucket"
    key    = "assignment2.tfstate"
    region = "eu-west-2"
  }
}

resource "aws_instance" "exercice2" {
  ami                    = "ami-09a1e275e350acf38"
  instance_type          = "t2.micro"
  key_name               = "DevOpsSeptAyo"
  vpc_security_group_ids = [aws_security_group.demo_assignment.id]

  count = 3

  tags = {
    Name        = "Our Second Assignment"
    Provisioner = "Terraform"
  }
}