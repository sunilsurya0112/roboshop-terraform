terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "remote-state-23" #bucket name
    key    = "vpc" #file name in bucket
    region = "us-east-1"
    dynamodb_table = "remotestate-locking" #dynamodb table name
  }
}

provider "aws" {
  region = "us-east-1"
}