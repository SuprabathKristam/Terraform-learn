terraform {
  backend "s3" {
    bucket = "awsbucket0910"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}