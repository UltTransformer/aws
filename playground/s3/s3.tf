# # Calling s3-bucket module

# module "aws_s3_bucket" {
#   # source      = "../../modules/s3-bucket"
#   source      = "git::https://github.com/UltTransformer/aws.git//modules/s3-bucket"
#   bucket_name = var.bucket-name-local
# }

# # Declaring module variable 

# variable "bucket-name-local" {
#   description = "name of the s3 bucket. Must be unique."
#   type        = string
#   default     = "test-bucket-654984651949"
# }

# -----

# Pull in variables

# locals {
#   config_values     = yamldecode(file("../config.yaml"))
#   bucket_name_local = local.config_values["bucket_name"]
# }

# Variable definition

variable "bucket_name" {
  type    = string
  default = "95601267507692527960592"
  # validation {
  #   condition     = length(var.bucket_name) == 9
  #   error_message = "Must be a 9 character long API token."
  # }
}

variable "region_name" {
  type    = string
  default = "eu-north-1"
}

# Create s3 bucket

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = {
    Name = "s3-${terraform.workspace}"
    Region = var.region_name
  }
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