terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "~> 1.4.0"
        }
    }
}

variable "account_id" {
  # this a secret? Nah
  default = "acc-v0o347t4e78tekfq0"
}

provider scalr {
  hostname = "zetta.scalr.io"
}


resource "scalr_environment" "main" {
  name       = "main"
  cost_estimation_enabled = false
  account_id = var.account_id
}
