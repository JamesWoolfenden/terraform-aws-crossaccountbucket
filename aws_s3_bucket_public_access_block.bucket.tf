resource "aws_s3_bucket_public_access_block" "bucket" {
  bucket                  = aws_s3_bucket.bucket.id
  restrict_public_buckets = true
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
}
