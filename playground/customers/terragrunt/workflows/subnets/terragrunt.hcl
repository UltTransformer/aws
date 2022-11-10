# Uses public module.

terraform {
  source = "git::https://github.com/UltTransformer/aws.git//playground/customers/terragrunt/workflows/subnets"
}

# Gathers configuration from parent terragrunt files.

include {
  path = find_in_parent_folders()
}