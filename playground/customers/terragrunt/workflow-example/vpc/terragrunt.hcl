# Uses public module.

terraform {
  source = "git::https://github.com/UltTransformer/aws.git//modules/vpc"
}

# Gathers configuration from parent terragrunt files.

// include {
//   path = find_in_parent_folders("UPDATE")
// }

# Inputs for module.

inputs = {
  vpc_1_cidr = "10.0.0.0/16"
  subnet_1 = "10.0.1.0/24"
  subnet_2 = "10.0.2.0/24"
  subnet_3 = "10.0.3.0/24"
  subnet_public_1 = "10.0.101.0/24"
  subnet_public_2 = "10.0.102.0/24"
  subnet_public_3 = "10.0.103.0/24"
  region = "eu-north-1"
  sub_region_1 = "eu-north-1a"
  sub_region_2 = "eu-north-1b"
  sub_region_3 = "eu-north-1c"
}