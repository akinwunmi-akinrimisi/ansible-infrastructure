
resource "aws_subnet" "my_private_subnet01" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr_block[2]
  availability_zone = var.availability_zone[0]

  tags = {
    Name = "ak-prv-subnet01"
  }
}

resource "aws_subnet" "my_private_subnet02" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.cidr_block[3]
  availability_zone = var.availability_zone[1]

  tags = {
    Name = "ak-prv-subnet02"
  }
}
