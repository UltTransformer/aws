terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      # version = "4.24.0"
    }
  }
}

provider "aws" {
  region                  = "eu-north-1"
}