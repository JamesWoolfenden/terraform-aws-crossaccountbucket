output "canonical-dev" {
  value = "${data.aws_canonical_user_id.dev.id}"
}

output "canonical-prod" {
  value = "${data.aws_canonical_user_id.prod.id}"
}
