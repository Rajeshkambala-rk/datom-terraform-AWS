variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
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
  default     = ""
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  default     = ""
}

variable "db_kms_key" {
  description = "KMS key ARN for encrypting the database"
  type        = string
}

variable "db_multi_az" {
  description = "Enable Multi-AZ deployment for high availability"
  type        = bool
  default     = true
}

variable "db_skip_final_snapshot" {
  description = "Skip final snapshot before deletion (false for production)"
  type        = bool
  default     = false
}

variable "db_final_snapshot_identifier" {
  description = "Final snapshot identifier before database deletion"
  type        = string
  default     = "final-snapshot"
}
variable "db_instance_class" {
  description = "The instance type for the RDS database"
  type        = string
  default     = "db.t3.micro"  # Adjust based on workload needs
}

variable "db_allocated_storage" {
  description = "The allocated storage size (GB) for the database"
  type        = number
  default     = 20
}

variable "db_engine" {
  description = "The database engine (e.g., postgres, mysql)"
  type        = string
  default     = "postgres"
}

variable "db_engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = "14.7"
}

variable "github_access_token" {
  description = "The GitHub access token"
  type        = string

}
