resource "aws_ecs_task_definition" "habit_ui" {

  family                   = "habit-ui"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"

  cpu    = 256
  memory = 512

  execution_role_arn =
    data.terraform_remote_state.infra.outputs.ecs_execution_role_arn

  container_definitions = jsonencode([
    {
      name      = "habit-ui"

      image     = "${data.terraform_remote_state.infra.outputs.ui_ecr_repository_url}:latest"

      essential = true

      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
          protocol      = "tcp"
        }
      ]

      logConfiguration = {
        logDriver = "awslogs"

        options = {
          awslogs-group         = "/ecs/habit-ui"
          awslogs-region        = "ap-southeast-1"
          awslogs-stream-prefix = "ecs"
        }
      }
    }
  ])
}