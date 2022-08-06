resource "aws_eip" "CN_NAT_GW_EIP" {
  vpc = true
}

resource "aws_nat_gateway" "CN_NAT_GW" {
  allocation_id = aws_eip.CN_NAT_GW_EIP.id
  subnet_id     = aws_subnet.CN_Subnet_Public.id
}
