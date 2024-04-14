provider "aws" {
  region = "eu-west-2"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Chornokozynskyi-IaC1"

  instance_type          = "t2.micro"
  key_name               = "chornokozynskyi-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-01142ec3c87ec19dd"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}