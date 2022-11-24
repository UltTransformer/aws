# Call env0 module

module "env0-s3-module" {
  source = "api.env0.com/a25b6a59-9c48-4917-b082-68e985319a87/env0-s3-module/env0s3module"
# source      = "git::https://github.com/UltTransformer/aws.git//modules/s3-bucket"
  version = "1.0.0"
}

# Variable definition

variable "bucket_name" {
  type    = string
  default = "change-me"
}

