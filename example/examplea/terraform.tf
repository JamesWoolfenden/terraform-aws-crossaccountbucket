terraform {
  required_providers {
    aws = {
      version               = "3.39.0"
      source                = "hashicorp/aws"
      configuration_aliases = [aws.prod]
    }

    null = {
      version = "2.1"
      source  = "hashicorp/null"
    }
  }
  required_version = ">=0.14.8"
}
