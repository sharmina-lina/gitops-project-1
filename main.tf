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

resource "aws_s3_bucket" "my_bucket3" {
  bucket = "sharminabuckets3testing3"
}

resource "aws_s3_bucket" "my_bucket2" {
  bucket = "sharminabuckets3testing2"
}

output "bucket_name" {
  value1 = aws_s3_bucket.my_bucket3.bucket
  value2 = aws_s3_bucket.my_bucket2.bucket
}
