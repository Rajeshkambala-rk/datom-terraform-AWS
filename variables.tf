variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "db_username" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "repository_url" {
  description = "GitHub repository URL for Amplify"
  type        = string
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "db_allocated_storage" {
  description = "The allocated storage size (GB) for the database"
  type        = number
}

variable "db_instance_class" {
  description = "The instance type for the RDS database"
  type        = string
}

variable "db_engine" {
  description = "The database engine (e.g., postgres, mysql)"
  type        = string
}

variable "db_engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "db_skip_final_snapshot" {
  description = "Skip final snapshot before deletion"
  type        = bool
}

variable "github_access_token" {
  description = "GitHub access token for Amplify"
  type        = string
}

# Variables for Cognito, KMS, Route53, and WAF modules
variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}

variable "domain_name" {
  description = "Domain name for Route53 (e.g., example.com)"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?(\\.[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?)*$", var.domain_name))
    error_message = "Domain name must be a valid domain name format (e.g., example.com)."
  }
}

# variable "domain_name" {
#   description = "Domain name for Route53"
#   type        = string
# }

variable "cloudfront_domain_name" {
  description = "CloudFront distribution domain name"
  type        = string
}

variable "cloudfront_hosted_zone_id" {
  description = "CloudFront distribution hosted zone ID"
  type        = string
}

variable "cloudfront_distribution_arn" {
  description = "CloudFront distribution ARN for Shield protection"
  type        = string
}