# Variable definition

variable "bucket_name" {
  type    = string
  default = "change-me"
}

# Call module

module "env0modules3" {
  source = "api.env0.com/a25b6a59-9c48-4917-b082-68e985319a87/env0modules3/env0modules3//s3-bucket"
  version = "0.0.3"
}