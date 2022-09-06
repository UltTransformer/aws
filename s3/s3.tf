resource "aws_s3_bucket" "cn-env0-statefile-bucket" {
  bucket = "cn-env0-statefile-bucket"
  acl    = "private"
  tags = {
    Name = "cn-env0-statefile-bucket"
  }
}