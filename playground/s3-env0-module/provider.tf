# Define provider

terraform {
  # required_version = "1.2.9"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Define region

provider "aws" {
  region = "eu-north-1"
}