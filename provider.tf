terraform {
    required_providers {
        scalr = {
            source  = "Scalr/scalr"
            version = "~> 1.4.0"
        }
    }
    backend "remote" {
        hostname = "zetta.scalr.io"
        organization = "main"

        workspaces {
            name = "zetta_scalr_io"
        }
    }
}

provider scalr {
  hostname = "zetta.scalr.io"
}
