terraform {
  backend "s3" {
    bucket = var.CN_Bucket_Name
    key    = var.CN_Terraform_State_Key
    region = var.CN_AWS_Region
  }
}