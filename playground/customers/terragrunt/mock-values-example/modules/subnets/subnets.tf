# subnet(s)
resource "aws_subnet" "subnet_1" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.10.10.0/24"
  availability_zone       = "eu-north-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "subnet_1"
  }
}

variable "vpc_id" {
  default = "vpc-12345678"
}