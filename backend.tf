terraform {
  backend "s3" {
    bucket         = "state-store-35" # same as above
    key            = "/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "State-lock-35"
    encrypt        = true
  }
}
