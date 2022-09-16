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
  ec2-instance-name = "ec2-1"
  security-group-name = "ec2-1-sg"
}

dependency "vpc" {
  config_path = "../../vpc"
  // skip_outputs = true
  // # Configure mock outputs for the `validate` command that are returned when there are no outputs available (e.g the
  // # module hasn't been applied yet.
  mock_outputs = {
    vpc_1 = "fake-vpc-id"
    subnet_1 = "fake-vpc-id"
    subnet_2 = "fake-vpc-id"
  }
}