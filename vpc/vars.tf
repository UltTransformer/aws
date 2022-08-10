# Variables file

variable "CN_VPC_1_CIDR" {
  type    = string
  default = "10.0.0.0/16"
}
variable "CN_Subnet_1" {
  type    = string
  default = "10.0.1.0/24"
}
variable "CN_Subnet_2" {
  type    = string
  default = "10.0.2.0/24"
}
variable "CN_Subnet_Public" {
  type    = string
  default = "10.0.101.0/24"
}
