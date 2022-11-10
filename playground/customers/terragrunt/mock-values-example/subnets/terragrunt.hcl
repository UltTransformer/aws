# Uses public module.

terraform {
  source = "git::https://github.com/UltTransformer/aws.git//playground/customers/terragrunt/mock-values-example/modules/subnets"
}

# Gathers configuration from parent terragrunt files.

include {
  path = find_in_parent_folders("provider.hcl")
}
dependency "vpc" {
  config_path = "../vpc"
  skip_outputs = true
  // mock_outputs = {
  //   vpc_id = "vpc-12345678"
  // }
  // mock_outputs_allowed_terraform_commands = ["plan"]
}

// inputs = {
//   vpc_id = dependency.vpc.outputs.vpc_id
// }