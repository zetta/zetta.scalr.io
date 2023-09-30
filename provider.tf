terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "~> 1.4.0"
        }
    }
}

provider scalr {
  hostname = "zetta.scalr.io"
}
