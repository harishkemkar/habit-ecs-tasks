module "cloudwatch" {
  source = "./modules/cloudwatch"
}

module "task_definitions" {

  source = "./modules/task-definitions"

  ecs_execution_role_arn = data.terraform_remote_state.infra.outputs.ecs_execution_role_arn

  api_ecr_repository_url = data.terraform_remote_state.infra.outputs.api_ecr_repository_url

  ui_ecr_repository_url = data.terraform_remote_state.infra.outputs.ui_ecr_repository_url
}



module "services" {

  source = "./modules/services"

  ecs_cluster_name = data.terraform_remote_state.infra.outputs.ecs_cluster_name

  private_subnet_ids = data.terraform_remote_state.infra.outputs.private_subnet_ids

  alb_sg_id = data.terraform_remote_state.infra.outputs.alb_sg_id

  api_task_definition_arn = module.task_definitions.api_task_definition_arn

  ui_task_definition_arn = module.task_definitions.ui_task_definition_arn

  habit_api_target_group_arn = data.terraform_remote_state.infra.outputs.habit_api_target_group_arn

  habit_ui_target_group_arn = data.terraform_remote_state.infra.outputs.habit_ui_target_group_arn
}