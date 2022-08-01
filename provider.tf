terraform {
  required_version  = "<0.12.3, >= 0.10.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}