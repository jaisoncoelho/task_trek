output "db_instance_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = data.aws_db_instance.task_trek.endpoint
}
