# Calling s3-bucket module

module "instance" {
  source              = "../../modules/instance"
  ec2-instance-name   = "ec2-1"
  security-group-name = "ec2-1-sg"
}