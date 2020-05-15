provider "aws" {
  region  = "eu-west-1"
  version = "2.61.0"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "samlprod"
  version = "2.61"
  alias   = "prod"
}

provider "null" {
  version = "2.1"
}
