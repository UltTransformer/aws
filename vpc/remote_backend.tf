terraform {
  backend "s3" {
    bucket = "cn-env0-statefile-bucket"
    key    = "demo.tfstate"
    region = "eu-north-1"
  }
}