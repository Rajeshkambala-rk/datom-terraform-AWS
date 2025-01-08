terraform {
  backend "s3" {
    bucket         = "datominfrabackend"
    key            = "terraformstatefile/terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "your-terraform-lock-table"
    #encrypt        = true
  }
}