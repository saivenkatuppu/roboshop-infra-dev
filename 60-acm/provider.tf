terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "84s-roboshop-dev"
    key    = "roboshop-acm"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true  #----> locking the state file 
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}