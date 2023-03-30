resource "aws_route_table" "my-application-route-table" {
  vpc_id = aws_vpc.my-application-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-application-internet-gateway.id
  }

  tags = {
    Name = "my-application-route-table"
  }
}

resource "aws_route_table_association" "my-application-subnet-association" {
  count = length(var.public_subnet_cidrs)

  subnet_id      = aws_subnet.my-application-subnet[count.index].id
  route_table_id = aws_route_table.my-application-route-table.id
}
