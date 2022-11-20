# Call env0 module

module "env0-module-s3" {
  source = "api.env0.com/a25b6a59-9c48-4917-b082-68e985319a87/env0-module-s3/env0modules3"
  version = "v1.0.0"
}

# Variable definition

variable "bucket_name" {
  type    = string
  default = "change-me"
}

