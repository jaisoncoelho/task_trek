resource "aws_ecs_cluster" "task_trek" {
  name = var.cluster_name

  tags = {
    Name = var.cluster_name
  }
}
