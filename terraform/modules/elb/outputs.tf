output "lb_id" {
  description = "The ID of the ELB"
  value       = aws_lb.task_trek.id
}

output "lb_sg_id" {
  description = "The ID of the ELB security group"
  value       = aws_security_group.lb_sg.id
}

output "target_group_arn" {
  description = "The ARN of the ELB default target group"
  value       = aws_lb_target_group.task_trek.arn
}