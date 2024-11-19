# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "eu-north-1" # Use your AWS region here
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "sharmina_bucket_S3_testing"
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.bucket
  acl    = "private"
}


output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}
