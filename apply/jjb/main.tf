terraform {
  required_version = "~> 1.1.7"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.8.0"
    }
  }

  backend "s3" {
    bucket = "jjb-tf"
    key = "test/test.tfstate"
    profile = "jj-admin"
    region = "eu-central-1"
  }
}

provider "aws" {
  profile = "jj-admin"
  region = "eu-central-1"
}
