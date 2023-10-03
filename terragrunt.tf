resource "scalr_environment" "terragrunt" {
  name       = "terragrunt"
  cost_estimation_enabled = false
  account_id = var.account_id
}

resource "scalr_workspace" "terragrunt_dev" {
  name            = "terragrunt_dev"
  environment_id  = scalr_environment.terragrunt.id
  vcs_provider_id = data.scalr_vcs_provider.zetta.id
  auto_apply      = true
  working_directory = "terragunt/dev"

  vcs_repo {
      identifier          = "zetta/scalr-examples"
      branch              = "main"
      dry_runs_enabled = true
  }
}

resource "scalr_workspace" "terragrunt_stg" {
  name            = "terragrunt_stg"
  environment_id  = scalr_environment.terragrunt.id
#   vcs_provider_id = data.scalr_vcs_provider.zetta.id
  auto_apply      = true
  working_directory = "terragunt/stg"

#   vcs_repo {
#       identifier          = "zetta/scalr-examples"
#       branch              = "main"
#       dry_runs_enabled = true
#   }
}

resource "scalr_workspace" "terragrunt_prod" {
  name            = "terragrunt_prod"
  environment_id  = scalr_environment.terragrunt.id
#   vcs_provider_id = data.scalr_vcs_provider.zetta.id
  auto_apply      = true
  working_directory = "terragunt/prod"

#   vcs_repo {
#       identifier          = "zetta/scalr-examples"
#       branch              = "main"
#       dry_runs_enabled = true
#   }
}
