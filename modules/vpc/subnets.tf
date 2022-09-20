# vpc
resource "aws_vpc" "vpc_1" {
  cidr_block           = var.vpc_1_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "vpc_1"
  }
}

# subnet(s)
resource "aws_subnet" "subnet_1" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.subnet_1
  availability_zone       = var.sub_region_1
  map_public_ip_on_launch = false
  tags = {
    Name = "subnet_1"
  }
}
# resource "aws_subnet" "subnet_2" {
#   vpc_id                  = aws_vpc.vpc_1.id
#   cidr_block              = var.subnet_2
#   availability_zone       = var.sub_region_2
#   map_public_ip_on_launch = false
#   tags = {
#     Name = "subnet_2"
#   }
# }
resource "aws_subnet" "subnet_public" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.subnet_public
  availability_zone       = var.sub_region_2
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet_public"
  }
}
