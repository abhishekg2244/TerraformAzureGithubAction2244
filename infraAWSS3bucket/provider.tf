terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.96.0"
    }
  }

  backend "s3" {
    bucket = "terraformstates3bucket2025"
    key = "awstfstate"
    region         = "us-east-1"
    
  }
}

provider "aws" {
  region = "us-east-1"
}