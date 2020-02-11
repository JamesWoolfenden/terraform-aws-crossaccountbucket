resource "aws_s3_bucket" "bucket" {
  bucket = local.bucketname
  acl    = "private"
  versioning {
    enabled = var.versioning
  }
}

resource "aws_s3_bucket_policy" "bucket" {
  bucket = local.bucketname
  policy = data.aws_iam_policy_document.canon.json
}

data "aws_iam_policy_document" "canon" {
  statement {
    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:PutObject",
    ]

    resources = [
      "arn:aws:s3:::${local.bucketname}",
      "arn:aws:s3:::${local.bucketname}/*",
    ]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.Secondary_account_id}:root"]
    }
  }
}
