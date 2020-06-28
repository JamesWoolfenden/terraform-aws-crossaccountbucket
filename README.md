
[![Slalom][logo]](https://slalom.com)

# terraform-aws-crossaccountbucket

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-crossaccountbucket/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-crossaccountbucket)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-crossaccountbucket.svg)](https://github.com/JamesWoolfenden/terraform-aws-crossaccountbucket/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

This module sets up an s3 buckets that is shared across aws accounts.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

It's a very simple module to use .
The module file:

```make
module "crossaccountbucket" {
  source  = "JamesWoolfenden/crossaccountbucket/aws"
  version = "0.1.6"
  name    = var.name
  aws_canonical_user_id = data.aws_canonical_user_id.prod.aws_canonical_user_id
  Secondary_account_id  = data.aws_caller_identity.prod.id
  }  ```

  You will need to provide 2 aws providers:

```hcl

provider "aws" {
  region  = "eu-west-1"
  version = "2.68.0"
}

provider "aws" {
  region  = "eu-west-1"
  version = "2.68.0"
  alias   = "prod"
}

```

and supply the account and canonical id to the module. The example supplies and example resource.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Error: no lines in file
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Instructions

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-crossaccountbucket&url=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-crossaccountbucket&url=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
[share_email]: mailto:?subject=terraform-aws-crossaccountbucket&body=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
