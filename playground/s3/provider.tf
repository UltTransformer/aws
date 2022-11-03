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

# Remote backend configuration

terraform {
  backend "s3" {
    bucket = "cn-env0-statefile-bucket"
    key    = "s3-playground.tfstate"
    region = "eu-north-1"
  }
}
