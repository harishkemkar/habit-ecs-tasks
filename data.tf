data "terraform_remote_state" "infra" {
  backend = "remote"

  config = {
    organization = "Personal_org_hk"

    workspaces = {
      name = "habit-infra"
    }
  }
}