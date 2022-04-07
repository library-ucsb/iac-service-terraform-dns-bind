variable "name" {
    type                        = string
}

variable "visibility" {
    type                        = string
    default                     = "public"  
}

variable "github_organization" {
    type                        = string
    default                     = "library-ucsb"
}

variable "description" {
    type                        = string
    default                     = null  
}

variable "oauth_client_id" {
    type                        = string  
}

variable "tfc_organization" {
    type                        = string  
}

variable "github_enforce_admins" {
    type                        = bool
    default                     = true  
}

variable "github_repo_allows_force_pushes" {
    type                        = bool
    default                     = false
}

variable "github_repo-dns_zones-name" {
    type                        = string  
}

variable "github_repo-dns_zones-description" {
    type                        = string
    default                     = null
}