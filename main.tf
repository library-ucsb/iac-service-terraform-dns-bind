data "github_user" "current" {
    username = ""
}


## The TFC workspace and github repo that manages the overall dns-bind infrasstructure
module "library_workspace" {
    source                          = "app.terraform.io/library-ucsb-core/module-library_workspace/tfc"

    name                            = var.name
    github_repo_visibility          = var.visibility
    github_organization             = var.github_organization
    tfc_organization                = var.tfc_organization
    description                     = var.description
    oauth_client_id                 = var.oauth_client_id

    github_enforce_admins           = var.github_enforce_admins
    github_repo_allow_force_pushes  = var.github_repo_allows_force_pushes 
    github_repo_push_restrictions   =  [ data.github_user.current.node_id ]
}

## GitHub repo to house our BIND Zone files
module "github-repo-bind" {
    source                          = "app.terraform.io/library-ucsb-core/module-github_repository/tfc"

    name                            = var.github_repo-dns_zones-name
    visibility                      = "private"
    description                     = var.github_repo-dns_zones-description 
}

# GitHub Branch Protection
module "github-branch_protection-bind" {
    source                          = "app.terraform.io/library-ucsb-core/module-github_branch_protection/tfc"
  
    repository_id                   = module.github-repo-bind.node_id
    enforce_admins                  = false
    allows_force_pushes             = true
}