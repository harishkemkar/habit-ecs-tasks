output "habit_api_log_group_name" {
  value = aws_cloudwatch_log_group.habit_api.name
}

output "habit_ui_log_group_name" {
  value = aws_cloudwatch_log_group.habit_ui.name
}