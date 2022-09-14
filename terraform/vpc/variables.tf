# Variables file

variable "vpc_1_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "subnet_1" {
  type    = string
  default = "10.0.1.0/24"
}
variable "subnet_2" {
  type    = string
  default = "10.0.2.0/24"
}
variable "subnet_public" {
  type    = string
  default = "10.0.102.0/24"
}
variable "region" {
  type    = string
  default = "eu-north-1"
}
variable "sub_region_1" {
  type    = string
  default = "eu-north-1a"
}
variable "sub_region_2" {
  type    = string
  default = "eu-north-1b"
}
