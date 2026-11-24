resource "aws_ecs_task_definition" "habit_api" {

  family                   = "habit-api"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"

  cpu    = 256
  memory = 512

  execution_role_arn =
    data.terraform_remote_state.infra.outputs.ecs_execution_role_arn

  container_definitions = jsonencode([
    {
      name      = "habit-api"

      image     = "${data.terraform_remote_state.infra.outputs.api_ecr_repository_url}:latest"

      essential = true

      portMappings = [
        {
          containerPort = 8000
          hostPort      = 8000
          protocol      = "tcp"
        }
      ]

      logConfiguration = {
        logDriver = "awslogs"

        options = {
          awslogs-group         = "/ecs/habit-api"
          awslogs-region        = "ap-southeast-1"
          awslogs-stream-prefix = "ecs"
        }
      }
    }
  ])
}