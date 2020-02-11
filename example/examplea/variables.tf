variable "name" {
  type        = string
  description = "Prefix to the bucketname"
}

variable "bucketname" {
  default     = ""
  description = "Optional name for the bucket to share"
  type        = string
}
