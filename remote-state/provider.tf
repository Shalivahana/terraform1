terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }

backend  "s3" {
    bucket = "ss-remote-state"
    key = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "ss-locking"
    }
  
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
