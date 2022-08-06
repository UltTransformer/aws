resource "aws_security_group" "CN_Security_Group" {
  name        = "CN_Security_Group"
  description = "Allow any any"
  vpc_id      = aws_vpc.CN_VPC_1.id

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