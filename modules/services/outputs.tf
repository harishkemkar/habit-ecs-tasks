output "api_service_name" {
  value = aws_ecs_service.habit_api.name
}

output "ui_service_name" {
  value = aws_ecs_service.habit_ui.name
}