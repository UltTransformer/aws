# Calling s3-bucket module

module "aws_s3_bucket" {
  # source      = "../../modules/s3-bucket"
  source      = "git::https://github.com/UltTransformer/aws.git//modules/terraform/s3-bucket"
  bucket_name = var.bucket-name-local
}

variable "bucket-name-local" {
  description = "name of the s3 bucket. Must be unique."
  type        = string
  default     = "cn-env0-statefile-bucket"
}

variable "random-local" {
  description = "name of the s3 bucket. Must be unique."
  type        = string
  default     = "94198619481654"
}