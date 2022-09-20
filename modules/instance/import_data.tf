# Importing data from existing vpc

data "aws_subnet" "subnet_1" {
  filter {
    name   = "tag:Name"
    values = ["subnet_1"]
  }
}

# data "aws_subnet" "subnet_2" {
#   filter {
#     name   = "tag:Name"
#     values = ["subnet_2"]
#   }
# }

data "aws_vpc" "vpc_1" {
  filter {
    name   = "tag:Name"
    values = ["vpc_1"]
  }
}