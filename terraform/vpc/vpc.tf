# Calling vpc modules

# CatoNetworks Fake Change

module "aws_vpc" {
  # source        = "../../modules/vpc"
  source          = "git::https://github.com/UltTransformer/aws.git//modules/terraform/vpc"
  vpc_1_cidr      = var.vpc_1_cidr_local
  subnet_1        = var.subnet_1_local
  subnet_2        = var.subnet_2_local
  subnet_3        = var.subnet_3_local  
  subnet_public_1 = var.subnet_public_local_1
  subnet_public_2 = var.subnet_public_local_2
  subnet_public_3 = var.subnet_public_local_3
  region          = var.region_local
  sub_region_1    = var.sub_region_1_local
  sub_region_2    = var.sub_region_2_local
  sub_region_3    = var.sub_region_3_local
}

# Vatiable definitions 

variable "vpc_1_cidr_local" {
  type    = string
  default = "10.0.0.0/16"
}
variable "subnet_1_local" {
  type    = string
  default = "10.0.1.0/24"
}
variable "subnet_2_local" {
  type    = string
  default = "10.0.2.0/24"
}
variable "subnet_3_local" {
  type    = string
  default = "10.0.3.0/24"
}
variable "subnet_public_local_1" {
  type    = string
  default = "10.0.101.0/24"
}
variable "subnet_public_local_2" {
  type    = string
  default = "10.0.102.0/24"
}
variable "subnet_public_local_3" {
  type    = string
  default = "10.0.103.0/24"
}
variable "region_local" {
  type    = string
  default = "eu-north-1"
}
variable "sub_region_1_local" {
  type    = string
  default = "eu-north-1a"
}
variable "sub_region_2_local" {
  type    = string
  default = "eu-north-1b"
}
variable "sub_region_3_local" {
  type    = string
  default = "eu-north-1c"
}
