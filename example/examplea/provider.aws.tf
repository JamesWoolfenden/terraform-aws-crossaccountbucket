provider "aws" {
  region  = "eu-west-1"
  version = "3.00.0"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "samlprod"
  version = "3.00.0"
  alias   = "prod"
}

provider "null" {
  version = "2.1"
}
