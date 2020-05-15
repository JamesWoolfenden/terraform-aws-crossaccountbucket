variable "name" {
  type        = string
  description = "Prefix to the bucketname"
}

variable "bucketname" {
  type        = string
  default     = ""
  description = "Optional name for the bucket to share"
}

variable "aws_canonical_user_id" {
  type        = string
  description = "The canonical id of the account you want to share to (Secondary)"
}

variable "Secondary_account_id" {
  type        = string
  description = "The account id of the secondary AWS account"
}

variable "versioning" {
  description = "Enable Versioning on s3 bucket"
  type        = bool
  default     = true
}
variable "sse_algorithm" {
  description = "The type of encryption algorithm to use"
  type        = string
  default     = "aws:kms"
}

variable "mfa_delete" {
  type        = bool
  description = "To enable/disable MFA delete"
  default     = true
}

variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map
}
