provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      createdby = "terraform"
      module    = "terraform-aws-crossaccountbucket"
      owner     = "James Woolfenden"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  alias  = "prod"
}
