terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# Import modules
module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  availability_zones  = var.availability_zones
  environment         = var.environment
}

module "lambda" {
  source             = "./modules/lambda"
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  environment        = var.environment
}

# Example resource using db_password
resource "aws_db_instance" "mydb" {
  allocated_storage    = var.db_allocated_storage
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  # identifier           = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = var.db_skip_final_snapshot
}

module "rds" {
  source             = "./modules/rds"
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  lambda_sg_id       = module.lambda.security_group_id
  environment        = var.environment
  db_name            = var.db_name
  db_username        = var.db_username
  db_password        = var.db_password
}

module "amplify" {
  source             = "./modules/amplify"
  environment        = var.environment
  repository_url     = var.repository_url
  github_access_token = var.github_access_token
}

module "cognito" {
  source      = "./modules/cognito"
  environment = var.environment
}

module "kms" {
  source      = "./modules/kms"
  environment = var.environment
  account_id  = var.aws_account_id
}

# module "route53" {
#   source                    = "./modules/route53"
#   environment              = var.environment
#   domain_name              = var.domain_name
#   cloudfront_domain_name   = var.cloudfront_domain_name
#   cloudfront_hosted_zone_id = var.cloudfront_hosted_zone_id
# }

module "waf" {
  source                      = "./modules/waf"
  environment                = var.environment
  cloudfront_distribution_arn = var.cloudfront_distribution_arn
}