# Define provider

terraform {
  required_version = "1.2.9"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  # backend "remote"  {
  #   hostname = "app.terraform.io"
  #   organization = "ChrisNoonPlayground"
  #   workspaces {
  #     name = "aws"
  #   }
  # }
  #   backend "remote" {
  #   hostname = "backend.api.env0.com"
  #   organization = "a25b6a59-9c48-4917-b082-68e985319a87.8983180e-6043-456d-8287-c78f9f7e367b"
  #   workspaces {
  #     name = "v9ub3rv9bcr3v97bwp9rb"
  #   }
  # }
}

# Define region

provider "aws" {
  region = "eu-north-1"
}

# Remote backend configuration

# terraform {
#   backend "s3" {
#     bucket = "cn-env0-statefile-bucket"
#     key    = "s3-playground.tfstate"
#     region = "eu-north-1"
#   }
# }

# terraform {
#   backend "remote" {
#     hostname = "backend.api.env0.com"
#     organization = "a25b6a59-9c48-4917-b082-68e985319a87.8983180e-6043-456d-8287-c78f9f7e367b"
#     workspaces {
#       name = "default"
#     }
#   }
# }