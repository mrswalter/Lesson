terraform {
  backend "s3" {
    bucket         = "state-store-36" # same as above
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "State-lock-36"
    encrypt        = true
  }
}
