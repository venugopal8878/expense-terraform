terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
   backend "s3" {
    bucket = "venu-w"
    key    = "expense"
    region = "us-east-1"
    dynamodb_table ="venuw"
  }
}


provider "aws" {
  # Configuration options
    region = "us-east-1"
}