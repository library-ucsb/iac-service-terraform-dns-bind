variable "name" {
    type        = string  
}

variable "github_repo_visibility" {
    type        = string
    default     = "private"  
}

variable "github_organization" {
    type        = string  
}

variable "tfc_organization" {
    type        = string  
}

variable "description" {
    type        = string  
}

variable "allow_destroy_plan" {
    type        = bool
    default     = true  
}

variable "auto_apply" {
    type        = bool
    default     = true  
}

variable "oauth_client_id" {
    type        = string  
}

variable "github_auto_init" {
  type          = bool
  default       = true
}