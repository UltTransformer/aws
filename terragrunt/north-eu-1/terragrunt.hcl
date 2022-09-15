remote_state {
  backend = "s3"
  config = {
    bucket         = "cn-env0-statefile-bucket"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "north-eu-1"
  }
}

generate "aws_provider" {
  path      = "aws_provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "north-eu-1"
}
EOF
}