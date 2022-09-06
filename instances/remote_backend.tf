terraform {
  backend "s3" {
    bucket = "cn-env0-statefile-bucket"
    key    = "instance.tfstate"
    region = "eu-north-1"
  }
}