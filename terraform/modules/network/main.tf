data "aws_vpc" "default" {
  id = var.vpc_id
}

data "aws_subnet" "subnet_1" {
  id = var.subnet_ids[0]
}

data "aws_subnet" "subnet_2" {
  id = var.subnet_ids[1]
}

data "aws_subnet" "subnet_3" {
  id = var.subnet_ids[2]
}
