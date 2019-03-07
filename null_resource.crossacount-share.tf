resource "null_resource" "crossacount-share" {
  provisioner "local-exec" {
    command = "aws s3api put-bucket-acl --bucket ${local.bucketname} --grant-read-acp id=${var.aws_canonical_user_id} --grant-read id=${var.aws_canonical_user_id} --grant-full-control id=${data.aws_canonical_user_id.dev.id}"
  }
}
