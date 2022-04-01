
## name: library-workspace
## type: module
## purpose: given specific parameters, will create and manage
##          a github repo, tf workspace, and more

locals {
  repo_id                   = module.github_repository.repo_id
} 

module "github_repository" {
  source                    = "app.terraform.io/library-ucsb-core/module-github_repository/tfc"

  name                      = var.name
  visibility                = var.github_repo_visibility
  auto_init                 = var.github_auto_init
}

module "github_branch_protection" {
  source                    = "../terraform-github-branch_protection"
  repository_id             = module.github_repository.node_id
  enforce_admins            = var.github_enforce_admins
}

data "tfe_oauth_client" "library-ucsb" {
  oauth_client_id           = var.oauth_client_id
}

module "tfc_workspace" {
  source                    = "app.terraform.io/library-ucsb-core/module-tfc_workspace/tfc"
  
  name                      = var.name
  organization              = var.tfc_organization
  description               = var.description
  allow_destroy_plan        = var.allow_destroy_plan
  auto_apply                = var.auto_apply
  vcs_repo_identifier       = module.github_repository.full_name
  vcs_repo_oauth_token_id   = data.tfe_oauth_client.library-ucsb.oauth_token_id
}


output "github_repo_full_name" {
  value = module.github_repository.full_name
}

output "github_repo_ssh_clone_url" {
  value = module.github_repository.ssh_clone_url
}

output "github_repo_id" {
  value = module.github_repository.repo_id
}

output "github_repo_branches" {
  value = module.github_repository.branches
}

output "tfc_workspace_id" {
  value                   = module.tfc_workspace.workspace_id
}

output "tfc_workspace_name" {
  value                   = module.tfc_workspace.name
}

output "tfc_workspace_working_directory" {
  value                   = module.tfc_workspace.working_directory
}


