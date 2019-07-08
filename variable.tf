variable "name" {
  type        = string
  description = "Prefix to the bucketname"
}

variable "bucketname" {
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
