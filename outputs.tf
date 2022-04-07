output "github_repo" {
    value = {
        full_name                   = module.library_workspace.github_repo_full_name  
        ssh_clone_url               = module.library_workspace.github_repo_ssh_clone_url
        id                          = module.library_workspace.github_repo_id
        branches                    = module.library_workspace.github_repo_branches
        push_restrictions           = module.library_workspace.github_repo_push_restrictions
    }
}

output "tfc_workspace" {
    value = {
        id                          = module.library_workspace.tfc_workspace_id
        name                        = module.library_workspace.tfc_workspace_name
        working_directory           = module.library_workspace.tfc_workspace_working_directory
    }
}