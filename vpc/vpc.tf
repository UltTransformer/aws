# VPC
resource "aws_vpc" "CN_VPC_1" {
  cidr_block           = var.CN_VPC_1_CIDR
  enable_dns_hostnames = true
  tags = {
    Name = "CN_VPC_1_NAME"
    Environment = var.environment
  }
}

# Subnet(s)
resource "aws_subnet" "CN_Subnet_1" {
  vpc_id                  = aws_vpc.CN_VPC_1.id
  cidr_block              = var.CN_Subnet_1
  availability_zone       = var.CN_Sub_Region_1
  map_public_ip_on_launch = false
  tags = {
    Name = "CN_Subnet_1"
  }
}
resource "aws_subnet" "CN_Subnet_2" {
  vpc_id                  = aws_vpc.CN_VPC_1.id
  cidr_block              = var.CN_Subnet_2
  availability_zone       = var.CN_Sub_Region_2
  map_public_ip_on_launch = false
  tags = {
    Name = "CN_Subnet_2"
  }
}
resource "aws_subnet" "CN_Subnet_Public" {
  vpc_id                  = aws_vpc.CN_VPC_1.id
  cidr_block              = var.CN_Subnet_Public
  availability_zone       = var.CN_Sub_Region_2
  map_public_ip_on_launch = true
  tags = {
    Name = "CN_Subnet_Public"
  }
}
