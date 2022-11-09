# Uses public module.

terraform {
  source = "git::https://github.com/UltTransformer/aws.git//modules/terragrunt/instance"
}

# Gathers configuration from parent terragrunt files.

include {
  path = find_in_parent_folders("provider.hcl","instance_terragrunt.hcl")
}

# Inputs for module.

inputs = {
  ec2-instance-name = "ec2-2-application"
  security-group-name = "ec2-2-app-sg"
  vpc_id = dependency.vpc.outputs.vpc_id
}

dependency "vpc" {
  config_path = "../../vpc"
  mock_outputs_allowed_terraform_commands = ["validate","plan"]
  // mock_outputs = {
  //   vpc_id = "vpc-f4k3id"
  // }
  skip_outputs = true
}