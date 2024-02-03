resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.vpc_name}-igw"
  }
}

resource "aws_subnet" "subnet" {
  for_each = var.subnets
  vpc_id     = aws_vpc.vpc.id
  cidr_block = each.value

  tags = {
    Name = "${var.vpc_name}-snet-${each.key}"
  }
}

