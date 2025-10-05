#AWS Provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state-waqar"
    key = "terraform.tfstate"
    region = "eu-west-2"
    encrypt = true
  }
}
provider "aws" {
  region = "eu-west-2"
}

