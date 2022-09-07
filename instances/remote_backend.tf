# Remote backend configuration
terraform {
  backend "s3" {
    bucket = "cn-env0-statefile-bucket"
    key    = "instance.tfstate"
    region = "eu-north-1"
  }
}

data "aws_subnet" "CN_Subnet_1" {
  filter {
    name   = "tag:Name"
    values = ["CN_Subnet_1"]
  }
}

# Pulling output from VPC remote backend
# data "terraform_remote_state" "vpc" {
#   backend = "s3"
#   config = {
#     bucket = "cn-env0-statefile-bucket"
#     key    = "env:/aws-vpc/vpc.tfstate"
#     region = "eu-north-1"
#   }
# }