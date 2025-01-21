# resource "aws_amplify_app" "main" {
#   name         = "${var.environment}-app"
#   repository   = var.repository_url

#   # 👇 Use this for authentication.
#   oauth_token = var.github_access_token  # 👈 Corrected authentication method

#   # Enable auto branch creation
#   enable_auto_branch_creation = true
#   enable_branch_auto_build    = true

#   # Build settings
#   build_spec = <<-EOT
#     version: 1
#     frontend:
#       phases:
#         preBuild:
#           commands:
#             - npm ci
#         build:
#           commands:
#             - npm run build
#       artifacts:
#         baseDirectory: build
#         files:
#           - '**/*'
#       cache:
#         paths:
#           - node_modules/**/*
#   EOT

#   # Environment variables
#   environment_variables = {
#     "ENV" = "dev"
#   }

#   tags = {
#     Name        = "${var.environment}-amplify-app"
#     Environment = var.environment
#   }
# }

# # Create a branch
# resource "aws_amplify_branch" "main" {
#   app_id      = aws_amplify_app.main.id
#   branch_name = "main"

#   framework = "React"
#   stage     = "PRODUCTION"
# }

resource "aws_amplify_app" "main" {
  name       = "${var.environment}-app"
  repository = var.repository_url

  oauth_token = var.github_access_token  # Ensure the token is valid

  enable_auto_branch_creation = true
  enable_branch_auto_build    = true

  build_spec = <<-EOT
    version: 1
    frontend:
      phases:
        preBuild:
          commands:
            - npm ci
        build:
          commands:
            - npm run build
      artifacts:
        baseDirectory: build
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
  EOT

  environment_variables = {
    "ENV" = "dev"
  }

  tags = {
    Name        = "${var.environment}-amplify-app"
    Environment = var.environment
  }
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.main.id
  branch_name = "main"

  framework = "React"
  stage     = "PRODUCTION"
}
