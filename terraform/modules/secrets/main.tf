data "aws_secretsmanager_secret_version" "app" {
  secret_id = var.app_secret_id
}

data "aws_secretsmanager_secret_version" "rds" {
  secret_id = var.rds_secret_id
}
