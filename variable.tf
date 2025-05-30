variable "bucket_name" {
  description = "The name of the S3 bucket to store data."
  type        = string
    default     = "state-storage-36"
}


variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking."
  type        = string
  default     = "State-Lock-36"
}


variable "s3_bucket_tags" {
  description = "Tags to apply to the S3 bucket."
  type        = map(string)
  default     = {
    Name = "state-storage-36"
  }
  
}


variable "dynamodb_table_tags" {
  description = "Tags to apply to the DynamoDB table."
  type        = map(string)
  default     = {
    Name = "State-Lock-36"
}
  }

