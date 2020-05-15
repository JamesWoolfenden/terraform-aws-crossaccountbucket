output "primary-canonical" {
  value = data.aws_canonical_user_id.dev.id
}

output "secondary-canonical" {
  value = var.aws_canonical_user_id
}

output "bucket" {
  value = aws_s3_bucket.bucket
}
