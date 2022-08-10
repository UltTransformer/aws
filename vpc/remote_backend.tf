terraform {
  backend "s3" {
    bucket = "cn-env0-statefile-bucket"
    key    = "terraform.tfstate"
    region = "eu-north-1"
  }
}