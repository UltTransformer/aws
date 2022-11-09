dependency "vpc" {
  config_path = "../vpc"
  mock_outputs_allowed_terraform_commands = ["validate","plan"]
  mock_outputs = {
    vpc_id = "vpc-f4k3id"
  }
}

inputs = {
  vpc_id = dependency.vpc.outputs.vpc_id
}