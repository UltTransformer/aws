# Variable definition

variable "bucket_name" {
  type    = string
  default = "change-me"
}

# Create s3 bucket

resource "aws_s3_bucket" "s3_bucket" {
  bucket = local.bucket_name_local
}

resource "aws_s3_bucket_acl" "s3_bucket" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "s3_bucket" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}