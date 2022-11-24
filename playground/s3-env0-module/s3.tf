# Call env0 module

module "s3bucket" {
  source = "api.env0.com/a25b6a59-9c48-4917-b082-68e985319a87/s3bucket/s3bucket"
  version = "1.0.0"
}

# Variable definition

variable "bucket_name" {
  type    = string
  default = "change-me"
}

