# tfsec:ignore:AWS002
resource "aws_s3_bucket" "bucket" {
  # checkov:skip=CKV_AWS_144:
  # checkov:skip=CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"

  bucket = local.bucketname
  acl    = "private"

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
