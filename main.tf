resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
 

  tags = {
    Name        = var.s3_bucket_tags["Name"]
  }
}


resource "aws_dynamodb_table" "table" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"

  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = var.dynamodb_table_tags["Name"]
}
}

terraform {
  backend "s3" {
    bucket         = "state-storage-36"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "State-Lock-36"
    encrypt        = true
  }
}
