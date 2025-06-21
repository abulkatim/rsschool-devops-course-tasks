data "aws_ssm_parameter" "debian12" {
  name = "/aws/service/debian/release/bookworm/latest/amd64"
}

variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "az1" {
  description = "availability zone 1"
  type        = string
  default     = "eu-central-1a"
}

variable "az2" {
  description = "availability zone 1"
  type        = string
  default     = "eu-central-1b"
}