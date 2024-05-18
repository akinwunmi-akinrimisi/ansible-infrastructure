

resource "aws_route_table_association" "my_public_route_table_asso_01" {
  subnet_id      = aws_subnet.my_public_subnet01.id
  route_table_id = aws_route_table.my_public_route_table.id
}

resource "aws_route_table_association" "my_public_route_table_asso_02" {
  subnet_id      = aws_subnet.my_public_subnet02.id
  route_table_id = aws_route_table.my_public_route_table.id
}
