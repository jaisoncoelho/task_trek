output "vpc_id" {
  description = "The ID of the VPC"
  value       = data.aws_vpc.default.id
}

output "subnet_ids" {
  description = "The Subnet IDs"
  value       = [data.aws_subnet.subnet_1.id, data.aws_subnet.subnet_2.id, data.aws_subnet.subnet_3.id]
}
