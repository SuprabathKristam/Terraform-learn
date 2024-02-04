terraform {
  backend "s3" {
    bucket = "awsbucket0910"
    key    = "test/terraform.tfstate" # It will store the state file with this name in the S3 bucket
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}