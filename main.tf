provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "task_1" {
  bucket_prefix = "rs"
}

resource "aws_s3_bucket_acl" "task_1_acl" {
  bucket = aws_s3_bucket.task_1.id
  acl    = "private"
}