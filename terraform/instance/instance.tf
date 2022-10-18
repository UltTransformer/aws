# Calling s3-bucket module

module "instance" {
  source              = "../../modules/instance"
  ec2-instance-name   = var.ec2-instance-name-local
  security-group-name = var.security-group-name-local
}

variable "ec2-instance-name-local" {
  description = "name of the s3 bucket. Must be unique."
  type        = string
  default     = "ec2-1"
}

variable "security-group-name-local" {
  description = "name of the s3 bucket. Must be unique."
  type        = string
  default     = "ec2-1-security-group"
}
