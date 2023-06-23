provider "aws" {
  region = "eu-west-1"
}

module "s3_bucket" {
  source  = "clouddrove/s3/aws"
  version = "1.3.0"

  name        = "clouddrove-secure-bucket"
  environment = "test"
  attributes  = ["private"]
  label_order = ["name", "environment"]

  versioning = true
  acl        = "private"
}