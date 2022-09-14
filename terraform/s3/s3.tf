# Calling s3-bucket module

module "aws_s3_bucket" {
  source      = "../../modules/s3-bucket"
  bucket_name = "cn-env0-statefile-bucket"
}