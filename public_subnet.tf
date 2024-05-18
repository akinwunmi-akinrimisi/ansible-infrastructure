
resource "aws_subnet" "my_public_subnet01" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidr_block[0]
  availability_zone       = var.availability_zone[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "ak-pub-subnet01"
  }
}

resource "aws_subnet" "my_public_subnet02" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidr_block[1]
  availability_zone       = var.availability_zone[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "ak-pub-subnet02"
  }
}
