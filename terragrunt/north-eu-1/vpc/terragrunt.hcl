# Uses public module.

terraform {
  source = "git::https://github.com/UltTransformer/aws.git//modules/vpc"
}

# Gathers configuration from parent terragrunt files.
include {
  path = find_in_parent_folders()
}