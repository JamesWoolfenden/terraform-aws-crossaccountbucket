resource "aws_s3_bucket_policy" "bucket" {
  bucket = local.bucketname
  policy = data.aws_iam_policy_document.canon.json
}
