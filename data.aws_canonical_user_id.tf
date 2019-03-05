data "aws_canonical_user_id" "dev" {}

data "aws_canonical_user_id" "prod" {
  provider = "aws.prod"
}
