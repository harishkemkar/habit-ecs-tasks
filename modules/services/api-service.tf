resource "aws_ecs_service" "habit_api" {

  name            = "habit-api-service"
  cluster         = var.ecs_cluster_name
  task_definition = var.api_task_definition_arn

  launch_type = "FARGATE"

  desired_count = 1

  network_configuration {

    subnets = var.private_subnet_ids

    security_groups = [
      var.alb_sg_id
    ]

    assign_public_ip = false
  }

  load_balancer {

    target_group_arn = var.habit_api_target_group_arn

    container_name = "habit-api"

    container_port = 8000
  }
}
