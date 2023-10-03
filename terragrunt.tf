resource "scalr_environment" "terragrunt" {
  name       = "terragrunt"
  cost_estimation_enabled = false
  account_id = var.account_id
}

resource "scalr_workspace" "terragrunt_dev" {
  name            = "terragrunt_dev"
  environment_id  = scalr_environment.terragrunt.id
  auto_apply      = true
  working_directory = "terragrunt/dev"
}

resource "scalr_workspace" "terragrunt_stg" {
  name            = "terragrunt_stg"
  environment_id  = scalr_environment.terragrunt.id
  auto_apply      = true
  working_directory = "terragrunt/stg"
}

resource "scalr_workspace" "terragrunt_prod" {
  name            = "terragrunt_prod"
  environment_id  = scalr_environment.terragrunt.id
  auto_apply      = true
  working_directory = "terragrunt/prod"
}
