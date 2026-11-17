output "ecs_cluster_name" {
  value = data.terraform_remote_state.infra.outputs.ecs_cluster_name
}

output "ecr_repository_url" {
  value = data.terraform_remote_state.infra.outputs.ecr_repository_url
}