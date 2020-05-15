resource "aws_s3_bucket" "bucket" {
  bucket = local.bucketname
  acl    = "private"
  tags   = var.common_tags
  #checkov:skip=CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
  versioning {
    enabled    = var.versioning
    mfa_delete = var.mfa_delete
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }

}
