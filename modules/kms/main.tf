resource "aws_kms_key" "main" {
  description             = "${var.environment} encryption key"
  deletion_window_in_days = 7
  enable_key_rotation     = true

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "Enable IAM User Permissions"
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${var.account_id}:root"
        }
        Action   = "kms:*"
        Resource = "*"
      }
    ]
  })

  tags = {
    Environment = var.environment
  }
}

resource "aws_kms_alias" "main" {
  name          = "alias/${var.environment}-key"
  target_key_id = aws_kms_key.main.key_id
}