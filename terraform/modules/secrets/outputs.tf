output "rails_master_key" {
  description = "The Rails master key"
  value       = local.app_secrets["rails_master_key"]
}

output "database_password" {
  description = "RDS instance password"
  value       = local.rds_secrets["password"]
}