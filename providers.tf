terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "terraformstate-myprj2"
    key    = "state"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}