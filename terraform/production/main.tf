module "network" {
  source = "../modules/network"
}

module "secrets" {
  source        = "../modules/secrets"
  app_secret_id = "task-trek/production"
  rds_secret_id = "rds!db-4bf2e02b-eef6-4fa6-94b9-65b9f806b799"
}

module "elb" {
  source     = "../modules/elb"
  lb_name    = "lb-task-trek-production"
  vpc_id     = module.network.vpc_id
  subnet_ids = module.network.subnet_ids
}

module "ecs_cluster" {
  source       = "../modules/ecs_cluster"
  cluster_name = "task-trek-production"
}

module "rds" {
  source                 = "../modules/rds"
  db_instance_identifier = "task-trek-production"
}

module "ecs_service" {
  source          = "../modules/ecs_service"
  region          = "us-east-2"
  family          = "task-trek-prod"
  cpu             = "256"
  memory          = "512"
  container_image = "851725263183.dkr.ecr.us-east-2.amazonaws.com/task-trek-production:latest"
  environment_variables = [
    {
      name  = "RAILS_ENV"
      value = "production"
    },
    {
      name  = "RAILS_MASTER_KEY"
      value = module.secrets.rails_master_key
    },
    {
      name  = "TASK_TREK_DATABASE_HOST"
      value = split(":", module.rds.db_instance_endpoint)[0]
    },
    {
      name  = "TASK_TREK_DATABASE_PORT"
      value = 5432
    },
    {
      name  = "TASK_TREK_DATABASE_PASSWORD"
      value = module.secrets.database_password
    }
  ]
  service_name     = "task-trek-production"
  desired_count    = 1
  cluster_id       = module.ecs_cluster.ecs_cluster_id
  vpc_id           = module.network.vpc_id
  subnet_ids       = module.network.subnet_ids
  lb_sg_id         = module.elb.lb_sg_id
  target_group_arn = module.elb.target_group_arn
  rds_sg_id        = "sg-014fdb38e6a5cacdb"
}
