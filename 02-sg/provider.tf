terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<= 5.91.0"
    }
  }


  backend "s3" {
    bucket = "remote-state-23" #bucket name
    key    = "sg" #file name in bucket
    region = "us-east-1"
    dynamodb_table = "remotestate-locking" #dynamodb table name
  }
}

provider "aws" {
  region = "us-east-1"
}