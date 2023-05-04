# creating VPC
resource "aws_vpc" "vpc_deepu" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_deepu"
  }


}