provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "samlprod"
  alias   = "prod"
}
