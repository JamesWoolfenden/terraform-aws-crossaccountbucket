provider "aws" {
  region  = "eu-west-1"
  version = "2.19"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "samlprod"
  version = "2.19"
  alias   = "prod"
}

provider "null" {
  version = "2.1"
}
