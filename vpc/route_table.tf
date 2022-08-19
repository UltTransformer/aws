resource "aws_route_table" "CN_Route_Table_Private" {
  vpc_id = aws_vpc.CN_VPC_1.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.CN_NAT_GW.id
  }
}

resource "aws_route_table" "CN_Route_Table_Public" {
  vpc_id = aws_vpc.CN_VPC_1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.CN_IGW.id
  }
  route {
    cidr_block = "172.16.1.0/24"
    gateway_id = aws_internet_gateway.CN_IGW.id
  }
}

resource "aws_route_table_association" "CN_Route_Table_Private_Association_CN_Subnet_1" {
  subnet_id      = aws_subnet.CN_Subnet_1.id
  route_table_id = aws_route_table.CN_Route_Table_Private.id
}

resource "aws_route_table_association" "CN_Route_Table_Private_Association_CN_Subnet_2" {
  subnet_id      = aws_subnet.CN_Subnet_2.id
  route_table_id = aws_route_table.CN_Route_Table_Private.id
}

resource "aws_route_table_association" "CN_Route_Table_Public_Association_CN_Subnet_Public" {
  subnet_id      = aws_subnet.CN_Subnet_Public.id
  route_table_id = aws_route_table.CN_Route_Table_Public.id
}