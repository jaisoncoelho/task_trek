output "ecs_service_id" {
  description = "The ID of the ECS service"
  value       = aws_ecs_service.task_trek.id
}
