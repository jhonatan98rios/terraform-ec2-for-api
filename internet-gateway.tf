resource "aws_internet_gateway" "my-application-internet-gateway" {
  vpc_id = aws_vpc.my-application-vpc.id

  tags = {
    Name = "my-application-internet-gateway"
  }
}
