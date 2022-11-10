# Uses public module.

terraform {
  source = "../modules/subnets"
}

# Gathers configuration from parent terragrunt files.

include {
  path = find_in_parent_folders("provider.hcl")
}
dependency "vpc" {
  config_path = "../vpc"
  skip_outputs = true
}

