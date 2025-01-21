# aws_region        = "us-east-1"
# vpc_cidr          = "10.0.0.0/16"
# availability_zones = ["us-east-1a", "us-east-1b"]
# environment       = "dev"

# # Database configuration
# db_name           = "dev_db"
# db_username       = "rds_admin"
# db_password       = "securepassword123"
# db_allocated_storage = 20
# db_instance_class = "db.t3.micro"
# db_engine         = "mysql"
# db_engine_version = "5.7"
# db_skip_final_snapshot = true

# # Amplify configuration
# repository_url      = "https://github.com/Rajeshkambala-rk/wildrydes-site-AWS-Amplify.git"
# github_access_token = "ghp_your_personal_access_token_here"


# General configuration
aws_region        = "us-east-1"
vpc_cidr          = "10.0.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]
environment       = "dev"

# Database configuration
db_name           = "dev_db"
db_username       = "rds_admin"
db_password       = "securepassword123"
db_allocated_storage = 20
db_instance_class = "db.t3.micro"
db_engine         = "mysql"
db_engine_version = "5.7"
db_skip_final_snapshot = true

# Amplify configuration
repository_url      = "https://github.com/Rajeshkambala-rk/wildrydes-site-AWS-Amplify.git"
github_access_token = "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"

# AWS credentials (add securely, e.g., from a secret manager or environment variables)
# aws_access_key    = "your_aws_access_key_here"
# aws_secret_key    = "your_aws_secret_key_here"

# Domain configuration for Route53 (if applicable)
domain_name       = "example.com"  # Replace with your domain name

# CloudFront configuration (if applicable)
cloudfront_domain_name       = "your_cloudfront_domain_name_here"
cloudfront_hosted_zone_id    = "Z2FDTNDATAQYW2"
cloudfront_distribution_arn  = "your_cloudfront_distribution_arn_here"

# AWS Account ID (required for certain services like Cognito, WAF, or KMS)
aws_account_id    = "961341531404"
