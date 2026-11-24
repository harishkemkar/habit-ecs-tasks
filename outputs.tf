output "ecs_cluster_name" {
  value = data.terraform_remote_state.infra.outputs.ecs_cluster_name
}

output "api_ecr_repository_url" {
  value = data.terraform_remote_state.infra.outputs.api_ecr_repository_url
}

output "ui_ecr_repository_url" {
  value = data.terraform_remote_state.infra.outputs.ui_ecr_repository_url
}
output "ecs_execution_role_arn" {
  value = data.terraform_remote_state.infra.outputs.ecs_execution_role_arn
}

output "habit_api_log_group_name" {
  value = module.cloudwatch.habit_api_log_group_name
}

output "habit_ui_log_group_name" {
  value = module.cloudwatch.habit_ui_log_group_name
}