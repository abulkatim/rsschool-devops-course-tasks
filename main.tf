provider "aws" {
    region = "eu-central-1"
}
resource "aws_s3_bucket" "task_1_bucket" {
bucket_prefix = "rs-asap"
acl = "private"
}

