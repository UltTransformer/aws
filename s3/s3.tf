resource "aws_s3_bucket" "cn-env0-statefile-bucket" {
  bucket = "cn-env0-statefile-bucket"
  aws_s3_bucket_acl    = "private"
  tags = {
    Name = "cn-env0-statefile-bucket"
  }
}