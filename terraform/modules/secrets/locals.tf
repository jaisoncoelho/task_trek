locals {
  app_secrets = jsondecode(data.aws_secretsmanager_secret_version.app.secret_string)
  rds_secrets = jsondecode(data.aws_secretsmanager_secret_version.rds.secret_string)
}