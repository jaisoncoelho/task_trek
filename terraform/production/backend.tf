terraform {
  backend "s3" {
    bucket = "tfstate-task-trek"
    key    = "task-trek/production/terraform.tfstate"
    region = "us-east-2"
  }
}