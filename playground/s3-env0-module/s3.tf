# Variable definition

variable "bucket_name" {
  type    = string
  default = "change-me"
}

# Call module

module "test-module" {
  source = "api.env0.com/a25b6a59-9c48-4917-b082-68e985319a87/test-module/testmodule"
  version = "0.0.1"
}