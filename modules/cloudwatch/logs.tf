resource "aws_cloudwatch_log_group" "habit_api" {
  name              = "/ecs/habit-api"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_group" "habit_ui" {
  name              = "/ecs/habit-ui"
  retention_in_days = 7
}