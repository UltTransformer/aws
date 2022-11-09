dependency "vpc" {
  config_path = "../../vpc"
  mock_outputs_allowed_terraform_commands = ["init","validate","plan"]
  mock_outputs = {
    vpc_id = "vpc-f4k3id"
  }
}