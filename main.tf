module "cloudwatch" {
  source = "./modules/cloudwatch"
}

module "task_definitions" {

  source = "./modules/task-definitions"

  ecs_execution_role_arn =
    data.terraform_remote_state.infra.outputs.ecs_execution_role_arn

  api_ecr_repository_url =
    data.terraform_remote_state.infra.outputs.api_ecr_repository_url

  ui_ecr_repository_url =
    data.terraform_remote_state.infra.outputs.ui_ecr_repository_url
}
