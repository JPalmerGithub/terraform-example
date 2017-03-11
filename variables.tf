/*
* Define our global vars and any other setup elements.
*
* TODO: Handle multi-region in some manner
*/
variable "aws_profile" {}

variable "aws_account" {}

variable "aws_s3_prefix" {}

variable "domain" {}

variable "aws_region" {
  default = "us-east-1"
}

variable "terraform_state_bucket" {}

# FIXME: replace hard coding with an aws provider var if I can figure out how
# to limit the list size.
variable "aws_availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

