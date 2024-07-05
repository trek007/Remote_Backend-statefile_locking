resource "aws_s3_bucket" "remote_backend_bucket" {
  bucket = "remote-backend-bucket01"
}

resource "aws_dynamodb_table" "statefile_locking_table" {
  name         = "statefile_locking_table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}