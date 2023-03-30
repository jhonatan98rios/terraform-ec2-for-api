resource "aws_subnet" "my-application-subnet" {
  count = length(var.public_subnet_cidrs)

  vpc_id            = aws_vpc.my-application-vpc.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = var.public_subnet_availability_zones[count.index]

  tags = {
    Name = "my-application-subnet-${var.public_subnet_availability_zones[count.index]}"
  }
}