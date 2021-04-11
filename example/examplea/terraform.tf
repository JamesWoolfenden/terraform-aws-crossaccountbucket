terraform {
  required_providers {
    aws = {
      version = "3.35.0"
      source  = "hashicorp/aws"
    }

    null = {
      version = "2.1"
      source  = "hashicorp/null"
    }
  }
  required_version = ">=0.14.8"
}
