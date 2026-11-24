module "cloudwatch" {
  source = "./modules/cloudwatch"
}

module "task_definitions" {
  source = "./modules/task-definitions"
}