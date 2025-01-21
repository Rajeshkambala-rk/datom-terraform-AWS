output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "IDs of the created private subnets"
  value       = module.vpc.private_subnet_ids
}

output "public_subnet_ids" {
  description = "IDs of the created public subnets"
  value       = module.vpc.public_subnet_ids
}

output "nat_gateway_ids" {
  value = module.vpc.nat_gateway_ids
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

# output "amplify_app_id" {
#   description = "The ID of the Amplify application"
#   value       = module.amplify.amplify_app_id
# }

# output "amplify_app_default_domain" {
#   description = "Default domain of the Amplify application"
#   value       = module.amplify.amplify_app_default_domain
# }

# output "lambda_function_arn" {
#   description = "The ARN of the deployed Lambda function"
#   value       = module.lambda.lambda_function_arn
# }

# output "lambda_function_name" {
#   description = "The name of the deployed Lambda function"
#   value       = module.lambda.lambda_function_name
# }

# output "lambda_function_role_arn" {
#   description = "The IAM Role ARN associated with the Lambda function"
#   value       = module.lambda.lambda_function_role_arn
# }

# output "lambda_security_group_id" {
#   description = "The ID of the security group assigned to the Lambda function"
#   value       = module.lambda.lambda_security_group_id
# }

output "cognito_user_pool_id" {
  description = "ID of the Cognito User Pool"
  value       = module.cognito.user_pool_id
}

output "cognito_user_pool_client_id" {
  description = "ID of the Cognito User Pool Client"
  value       = module.cognito.user_pool_client_id
}

output "cognito_identity_pool_id" {
  description = "ID of the Cognito Identity Pool"
  value       = module.cognito.identity_pool_id
}

output "kms_key_id" {
  description = "ID of the KMS key"
  value       = module.kms.key_id
}

output "kms_key_arn" {
  description = "ARN of the KMS key"
  value       = module.kms.key_arn
}

# output "route53_zone_id" {
#   description = "ID of the Route53 zone"
#   value       = module.route53.zone_id
# }

# output "route53_name_servers" {
#   description = "Name servers for the Route53 zone"
#   value       = module.route53.name_servers
# }

output "waf_web_acl_id" {
  description = "ID of the WAF Web ACL"
  value       = module.waf.web_acl_id
}

output "waf_web_acl_arn" {
  description = "ARN of the WAF Web ACL"
  value       = module.waf.web_acl_arn
}