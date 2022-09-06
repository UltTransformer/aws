resource "aws_s3_bucket" "cn-env0-statefile-bucket" {
  bucket = "cn-env0-statefile-bucket"
}

resource "aws_s3_bucket_acl" "cn-env0-statefile-bucket" {
  bucket = aws_s3_bucket.cn-env0-statefile-bucket.id
  acl    = "private"
}