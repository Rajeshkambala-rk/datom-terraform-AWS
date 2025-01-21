variable "environment" {
  description = "Environment name"
  type        = string
}

variable "domain_name" {
  description = "Domain name for the Route53 zone (e.g., example.com)"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?(\\.[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?)*$", var.domain_name))
    error_message = "Domain name must be a valid domain name format (e.g., example.com)."
  }
}

# variable "domain_name" {
#   description = "Domain name for the Route53 zone"
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