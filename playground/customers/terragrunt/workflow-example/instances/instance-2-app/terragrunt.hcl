# Uses public module.

terraform {
  source = "git::https://github.com/UltTransformer/aws.git//modules/instance"
}

# Gathers configuration from parent terragrunt files.

include {
  path = find_in_parent_folders("provider.hcl")
}

# Inputs for module.

inputs = {
  ec2-instance-name = "ec2-2-application"
  security-group-name = "ec2-2-app-sg"
}

// dependency "vpc" {
//   config_path = "../../vpc"
// }