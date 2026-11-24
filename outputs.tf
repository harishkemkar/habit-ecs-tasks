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

output "api_task_definition_arn" {
  value = module.task_definitions.api_task_definition_arn
}

output "ui_task_definition_arn" {
  value = module.task_definitions.ui_task_definition_arn
}

output "api_service_name" {
  value = module.services.api_service_name
}

output "ui_service_name" {
  value = module.services.ui_service_name
}