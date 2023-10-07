resource "scalr_environment" "terragrunt" {
  name       = "terragrunt"
  cost_estimation_enabled = false
  account_id = var.account_id
}

resource "scalr_workspace" "terragrunt_dev" {
  name            = "terragrunt_dev"
  environment_id  = scalr_environment.terragrunt.id
  auto_apply      = true
}

resource "scalr_variable" "dev_env" {
  key          = "env"
  value        = "dev"
  category     = "terraform"
  workspace_id = scalr_workspace.terragrunt_dev.id
}

resource "scalr_workspace" "terragrunt_stg" {
  name            = "terragrunt_stg"
  environment_id  = scalr_environment.terragrunt.id
  auto_apply      = true
}

resource "scalr_variable" "stg_env" {
  key          = "env"
  value        = "stg"
  category     = "terraform"
  workspace_id = scalr_workspace.terragrunt_stg.id
}

resource "scalr_workspace" "terragrunt_prod" {
  name            = "terragrunt_prod"
  environment_id  = scalr_environment.terragrunt.id
  auto_apply      = true
}

resource "scalr_variable" "prod_env" {
  key          = "env"
  value        = "prod"
  category     = "terraform"
  workspace_id = scalr_workspace.terragrunt_prod.id
}
