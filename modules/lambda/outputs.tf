output "security_group_id" {
  value = aws_security_group.lambda.id
  description = "ID of the Lambda security group"
}