# Calling s3-bucket module

module "aws_s3_bucket" {
  source      = "../../modules/s3-bucket"
  bucket_name = var.bucket_name_local
}

variable "bucket_name_local" {
  description = "name of the s3 bucket. Must be unique."
  type        = string
}