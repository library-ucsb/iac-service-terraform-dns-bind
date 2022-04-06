
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

output "github_repo" {
    value = {
        full_name           = module.library_workspace.github_repo_full_name  
        ssh_clone_url       = module.library_workspace.github_repo_ssh_clone_url
        id                  = module.library_workspace.github_repo_id
        branches            = module.library_workspace.github_repo_branches
    }
}

output "tfc_workspace" {
    value = {
        id                  = module.library_workspace.tfc_workspace_id
        name                = module.library_workspace.tfc_workspace_name
        working_directory   = module.library_workspace.tfc_workspace_working_directory
    }
}