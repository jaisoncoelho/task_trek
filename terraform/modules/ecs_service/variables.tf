variable "family" {
  description = "The family of the ECS task definition"
  type        = string
}

variable "cpu" {
  description = "The number of CPU units used by the task"
  type        = string
}

variable "memory" {
  description = "The amount of memory (in MiB) used by the task"
  type        = string
}

variable "container_image" {
  description = "The container image to use"
  type        = string
}

variable "environment_variables" {
  description = "A list of environment variables to pass to the container"
  type        = list(map(string))
}

variable "service_name" {
  description = "The name of the ECS service"
  type        = string
}

variable "desired_count" {
  description = "The desired number of ECS tasks"
  type        = number
}

variable "cluster_id" {
  description = "The ID of the ECS cluster"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs"
  type        = list(string)
}

variable "lb_sg_id" {
  description = "The ID of the ELB security group"
  type        = string
}

variable "rds_sg_id" {
  description = "The ID of the RDS security group"
  type        = string
}

variable "target_group_arn" {
  description = "The ARN of the ELB default target group"
}

variable "region" {
  description = "The AWS region"
  type        = string
}
