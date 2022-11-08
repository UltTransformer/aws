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
  ec2-instance-name = "ec2-1-web"
  security-group-name = "ec2-1-web-sg"
}

dependency "vpc" {
  config_path = "../../vpc"
  mock_outputs_allowed_terraform_commands = ["validate","plan"]
  mock_outputs = {
    vpc_id = "fake-vpc-id"
  }
}