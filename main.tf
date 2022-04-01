
# create one unit of `library-workspace`
module "library_workspace" {
    source                  = "./modules/terraform-library-workspace"

    name                    = var.name
    github_repo_visibility  = var.visibility
    github_organization     = var.github_organization
    tfc_organization        = var.tfc_organization
    description             = var.description
    oauth_client_id         = var.oauth_client_id
}