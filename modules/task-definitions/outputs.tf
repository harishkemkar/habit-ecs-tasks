output "api_task_definition_arn" {
  value = aws_ecs_task_definition.habit_api.arn
}

output "ui_task_definition_arn" {
  value = aws_ecs_task_definition.habit_ui.arn
}