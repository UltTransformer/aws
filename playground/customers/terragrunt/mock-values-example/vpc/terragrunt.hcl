# Uses public module.

terraform {
  source = "../modules/vpc"
}

# Gathers configuration from parent terragrunt files.

include {
  path = find_in_parent_folders("provider.hcl")
}