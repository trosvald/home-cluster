terraform {
  cloud {
    organization = "monosense"

    workspaces {
      name = "home-cluster-authentik"
    }
  }
  required_providers {
    authentik = {
      source  = "goauthentik/authentik"
      version = "2023.10.0"
    }
  }
}

module "secret_authentik" {
  # Remember to export OP_CONNECT_HOST and OP_CONNECT_TOKEN
  source = "github.com/bjw-s/terraform-1password-item?ref=main"
  vault  = "Automation"
  item   = "Authentik"
}

module "secret_immich" {
  source = "github.com/bjw-s/terraform-1password-item?ref=main"
  vault  = "Automation"
  item   = "Immich"
}

module "secret_grafana" {
  source = "github.com/bjw-s/terraform-1password-item?ref=main"
  vault  = "Atomation"
  item   = "Grafana"
}

provider "authentik" {
  url   = module.secret_authentik.fields["endpoint_url"]
  token = module.secret_authentik.fields["terraform_token"]
}
