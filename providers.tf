terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "peter-heywood-terraform"
    key    = "state"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}