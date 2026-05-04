terraform {
  required_providers {

    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = ">=0.14.8"
}
