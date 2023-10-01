resource "scalr_workspace" "terragrunt" {
  name            = "scalr-examples"
  environment_id  = scalr_environment.main.id
  vcs_provider_id = data.scalr_vcs_provider.zetta.id

  vcs_repo {
      identifier          = "zetta/scalr-examples"
      branch              = "main"
      dry_runs_enabled = true
  }
}
