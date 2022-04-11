# Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = "${var.vpc_cidr}"
  tags = {
    "Name" = var.vpc_name
  }
}

# Create a VPC subnet
resource "aws_subnet" "subnet" {
  count = length(data.aws_availability_zones.available.names)
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "${element(var.vpc_subnet, count.index)}"
  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"

  tags = {
    Name = "subnet-${count.index+1}"
  }
}
