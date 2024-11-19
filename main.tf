# main.tf
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
