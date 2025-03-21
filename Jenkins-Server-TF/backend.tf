terraform {
  backend "s3" {
    bucket         = "my-cas55-bucket"
    region         = "us-east-1"
    key            = "mykey-pair"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}