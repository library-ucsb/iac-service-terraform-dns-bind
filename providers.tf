# TerraForm Cloud - set environment variable: TFE_TOKEN
provider "tfe" {} 

## GitHub
terraform {

  # cloud {
  #   organization    = "library-ucsb-core"
  #   workspaces {
  #     name          = ""
  #   }
  # }

  required_providers {
    tfe = {
      version = "~> 0.27.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# GitHub Owner.  This can be set via environment variable GITHUB_OWNER.
#                NOTE: if you set GITHUB_TOKEN, you must set GITHUB_OWNER
#                      as an env var as well!  The value below will be ignored.
# See: https://github.com/integrations/terraform-provider-github/issues/876#issuecomment-895512783
provider "github" {
  owner			   = var.github_organization
  }