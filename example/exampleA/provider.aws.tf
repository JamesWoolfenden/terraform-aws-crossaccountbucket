provider "aws" {
  region  = "eu-west-1"
  version = "2.0"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "samlprod"
  version = "2.0"
  alias   = "prod"
}
