variable "environment" {
  description = "Environment name"
  type        = string
}

variable "repository_url" {
  description = "GitHub repository URL"
  type        = string
}

variable "github_access_token" {
  description = "GitHub Personal Access Token for Amplify"
  type        = string
  sensitive   = true
}
