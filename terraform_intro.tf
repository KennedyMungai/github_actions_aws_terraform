provider "aws" {
    region = "us-east-1"
}

module "intro_vpc" {
  source = "terraform-aws-modules/vpc/aws"
  cidr = "10.7.0.0/16"

  azs = ["us-east-1a", "us-east-1c"]
  public_subnets = ["10.7.100.0/24", "10.7.200.0/24"]
}