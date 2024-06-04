variable "app_secret_id" {
  description = "The ID of the app secrets in AWS Secrets Manager"
  type        = string
}

variable "rds_secret_id" {
  description = "The ID of the rds secrets in AWS Secrets Manager"
  type        = string
}
