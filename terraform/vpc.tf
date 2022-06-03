resource "aws_vpc" "our-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "our-vpc"
  }

}
