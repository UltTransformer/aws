# Uses public module.

terraform {
  source = "git::https://github.com/UltTransformer/aws.git//modules/instance"
}

# Gathers configuration from parent terragrunt files.

include {
  path = find_in_parent_folders("region_terragrunt.hcl", "instance_terragrunt.hcl")
}

# Inputs for module.

inputs = {
  ec2-instance-name = "ec2-1-web"
  security-group-name = "ec2-1-web-sg"
}

// dependency "vpc" {
//   config_path = "../../vpc"
// }