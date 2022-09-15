# Calling vpc modules

module "aws_s3_bucket" {
  # source      = "../../modules/s3-bucket"
  source        = "git::https://github.com/UltTransformer/aws.git//modules/vpc"
  vpc_1_cidr    = var.vpc_1_cidr_local
  subnet_1      = var.subnet_1_local
  subnet_2      = var.subnet_2_local
  subnet_public = var.subnet_public_local
  region        = var.region_local
  sub_region_1  = var.sub_region_1_local
  sub_region_2  = var.sub_region_2_local
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
variable "subnet_public_local" {
  type    = string
  default = "10.0.102.0/24"
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
