resource "aws_security_group" "CN_Security_Group" {
  name        = "CN_SecurityGroup"
  description = "Allow any any"
  vpc_id      = data.aws_vpc.CN_VPC_1

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
