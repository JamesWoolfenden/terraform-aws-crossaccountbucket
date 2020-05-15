module "shared" {
  source                = "../../"
  name                  = var.name
  aws_canonical_user_id = data.aws_canonical_user_id.prod.id
  Secondary_account_id  = data.aws_caller_identity.prod.id
  common_tags           = var.common_tags
}
