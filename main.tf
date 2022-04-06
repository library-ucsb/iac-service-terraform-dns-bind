
# create one unit of `library-workspace`
module "library_workspace" {
    source                  = "app.terraform.io/library-ucsb-core/module-library_workspace/tfc"

    name                    = var.name
    github_repo_visibility  = var.visibility
    github_organization     = var.github_organization
    tfc_organization        = var.tfc_organization
    description             = var.description
    oauth_client_id         = var.oauth_client_id

    github_enforce_admins   = var.github_enforce_admins
}
