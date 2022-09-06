# Remote backend configuration
terraform {
  backend "s3" {
    bucket = "cn-env0-statefile-bucket"
    key    = "instance.tfstate"
    region = "eu-north-1"
  }
}

# Pulling output from VPC remote backend
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "cn-env0-statefile-bucket"
    key    = "vpc.tfstate"
    region = "eu-north-1"
  }
}

# resource "aws_subnet" "CN_Subnet_1_ID" {
#   subnet_id = data.terraform_remote_state.vpc.outputs.CN_Subnet_1_ID
#   vpc_id = data.terraform_remote_state.vpc.outputs.CN_VPC_1_ID	
# }