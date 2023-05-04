# creating internet gateway
resource "aws_internet_gateway" "igw_deepu" {
  vpc_id = aws_vpc.vpc_deepu.id

  tags = {
    Name = "igw_deepu"
  }

}