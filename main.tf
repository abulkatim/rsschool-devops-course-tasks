provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "task_1" {
  bucket_prefix = "rs"
  acl           = "private"
}