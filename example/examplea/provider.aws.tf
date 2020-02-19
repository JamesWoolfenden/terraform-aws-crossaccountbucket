provider "aws" {
  region  = "eu-west-1"
  version = "~>2.48"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "samlprod"
  version = "2.48"
  alias   = "prod"
}

provider "null" {
  version = "2.1"
}
