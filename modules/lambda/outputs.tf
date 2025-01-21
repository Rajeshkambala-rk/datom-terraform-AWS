output "security_group_id" {
  value = aws_security_group.lambda.id
  description = "ID of the Lambda security group"
}

# # Output the Lambda function ARN
# output "lambda_function_arn" {
#   description = "The ARN of the deployed Lambda function"
#   value       = aws_lambda_function.vpc_lambda.arn
# }

# # Output the Lambda function name
# output "lambda_function_name" {
#   description = "The name of the deployed Lambda function"
#   value       = aws_lambda_function.vpc_lambda.function_name
# }

# # Output the Lambda function IAM Role ARN
# output "lambda_function_role_arn" {
#   description = "The IAM Role ARN associated with the Lambda function"
#   value       = aws_lambda_function.vpc_lambda.role
# }

# # Output the Lambda security group ID
# output "lambda_security_group_id" {
#   description = "The ID of the security group assigned to the Lambda function"
#   value       = aws_security_group.lambda_sg.id
# }
