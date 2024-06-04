variable "vpc_id" {
  description = "The ID of the VPC"
  default     = "vpc-0b855ce8c24038734"
  type        = string
}

variable "subnet_ids" {
  description = "The Subnet IDs"
  default     = ["subnet-033c00f74bf24c54d", "subnet-06321df0c1351e4e4", "subnet-0d00b3bfd44a276c6"]
  type        = list(string)
}
