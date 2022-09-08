resource "aws_security_group" "CN_Security_Group" {
  name        = "CN_SecurityGroup"
  description = "Allow any any"
  vpc_id      = data.aws_vpc.CN_VPC_1.id

  ingress {
    from_port   = 0
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
