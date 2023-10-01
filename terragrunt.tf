resource "scalr_environment" "terragrunt" {
  name       = "terragrunt"
  cost_estimation_enabled = false
  account_id = var.account_id
}

resource "scalr_workspace" "terragrunt_example" {
  name            = "terragrunt_example"
  environment_id  = scalr_environment.terragrunt.id
  vcs_provider_id = data.scalr_vcs_provider.zetta.id
  auto_apply      = true
  working_directory = "terragunt/"

  vcs_repo {
      identifier          = "zetta/terragrunt-examples"
      branch              = "main"
      dry_runs_enabled = true
  }
}
