resource "github_branch_default" "default" {
  repository                          = var.repository
  branch                              = var.branch
}

