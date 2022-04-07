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

output "github_repo_bind_zones" {
    value = {
        full_name                   = module.github-repo-bind.full_name
        node_id                     = module.github-repo-bind.node_id
        repo_id                     = module.github-repo-bind.repo_id
        ssh_clone_url               = module.github-repo-bind.ssh_clone_url
        branches                    = module.github-repo-bind.branches
    }
}

output "github_branch_protection-bind_zones" {
    value = {
        repo_id                     = module.github-branch_protection-bind.repo_id
        pattern                     = module.github-branch_protection-bind.pattern
        enforce_admins              = module.github-branch_protection-bind.enforce_admins
        push_restrictions           = module.github-branch_protection-bind.push_restrictions
        allows_force_pushes         = module.github-branch_protection-bind.allows_force_pushes
    }
}