# Variable definition

variable "bucket_name" {
  type    = string
  default = "change-me"
}

# Call module

module "aws_s3_bucket" {
  source      = "../../../test-modules"
}