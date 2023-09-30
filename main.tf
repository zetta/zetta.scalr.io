data "scalr_vcs_provider" "zetta" {
  name = "zetta"
  account_id = var.account_id
}

resource "scalr_environment" "main" {
  name       = "main"
  cost_estimation_enabled = false
  account_id = var.account_id
}

resource "scalr_workspace" "vcs-driven" {
  name            = "zetta_scalr_io"
  environment_id  = scalr_environment.main.id
  vcs_provider_id = data.scalr_vcs_provider.zetta.id

  vcs_repo {
      identifier          = "zetta/zetta.scalr.io"
      branch              = "main"
      dry_run_enabled = true
  }
}
