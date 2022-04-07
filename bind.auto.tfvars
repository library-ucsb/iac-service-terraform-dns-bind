name                                = "iac-service-terraform-dns-bind"
github_organization                 = "library-ucsb"
oauth_client_id                     = "oc-pga3NiSumJzwPVft"
tfc_organization                    = "library-ucsb-core"

# true = admins must go through checks / false = admins avoid checks
github_enforce_admins               = false
github_repo_allows_force_pushes     = true

github_repo-dns_zones-name          = "iac-service-dns-bind_zones"
github_repo-dns_zones-description   = "holds the bind zone files"

github_branches = [
    "main",
    "dev"
]

github_repo_default_branch          = "main"