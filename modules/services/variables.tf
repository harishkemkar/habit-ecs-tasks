variable "ecs_cluster_name" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "alb_sg_id" {
  type = string
}

variable "api_task_definition_arn" {
  type = string
}

variable "ui_task_definition_arn" {
  type = string
}

variable "habit_api_target_group_arn" {
  type = string
}

variable "habit_ui_target_group_arn" {
  type = string
}