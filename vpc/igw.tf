resource "aws_internet_gateway" "CN_IGW" {
  vpc_id = aws_vpc.CN_VPC_1.id
}