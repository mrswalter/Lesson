terraform {
  backend "s3" {
    bucket         = "state-store-34" # same as above
    key            = "/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "State-lock-34"
    encrypt        = true
  }
}
