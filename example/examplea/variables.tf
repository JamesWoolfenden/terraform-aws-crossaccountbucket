variable "name" {
  type        = string
  description = "Prefix to the bucketname"
}

variable "bucketname" {
  default     = ""
  description = "Optional name for the bucket to share"
  type        = string
}


variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map
}
