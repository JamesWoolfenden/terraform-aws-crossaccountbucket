provider "aws" {
  region  = "eu-west-1"
  version = "2.16"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "samlprod"
  version = "2.16"
  alias   = "prod"
}
