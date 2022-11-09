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
  ec2-instance-name = "ec2-1-web"
  security-group-name = "ec2-1-web-sg"
  vpc_id = dependency.vpc.outputs.vpc_id
  subnet_id = dependency.vpc.outputs.subnet_id
}

dependency "vpc" {
  config_path = "../../vpc"
  mock_outputs_allowed_terraform_commands = ["init","validate","plan"]
  mock_outputs = {
    vpc_id = "vpc-f4k3id"
    subnet_id = "subnet-fake"
  }
  skip_outputs = true
}