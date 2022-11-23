# Define provider

terraform {
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
