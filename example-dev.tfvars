/*
* aws vars for Terraform
*/
terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config {
      encrypt = "true"
      bucket  = "example-com-example-dev-terraform"
      key     = "root.tfstate"
      region  = "us-east-1"
    }
  }
}

# WARNING: Must be aligned with terragrunt setup.
# NOTE: tf_example_svc takes care of the
# {var.aws_s3_prefix}-{var.aws_account} in the bucket name.
terraform_state_bucket = "terraform"

aws_profile       = "example-dev"       # AWS credentials profile name
aws_account       = "example-dev"       # AWS account name
domain            = "example.com"       # domain name
aws_s3_prefix     = "example-com"       # we prefix S3 buckets with this

