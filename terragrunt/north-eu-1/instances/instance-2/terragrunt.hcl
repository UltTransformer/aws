# Uses public module.

terraform {
  source = "git::https://github.com/UltTransformer/aws.git//modules/instance"
}

# Gathers configuration from parent terragrunt files.

include {
  path = find_in_parent_folders()
}

# Inputs for module.

inputs = {
  ec2-instance-name = "ec2-2"
  security-group-name = "ec2-2-sg"
}