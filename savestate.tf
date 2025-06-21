terraform {
  backend "s3" {
    bucket = "terraform-state-storage-bucket-us-east"
    key    = "state.tfstate"
    region = var.region
  }
}
