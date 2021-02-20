locals {
  artifactbucket = "${var.name}-${data.aws_caller_identity.current.account_id}-artifacts"
  bucketname     = var.bucketname == "" ? local.artifactbucket : var.bucketname
}
