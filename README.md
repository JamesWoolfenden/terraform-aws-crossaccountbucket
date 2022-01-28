# terraform-aws-crossaccountbucket

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-crossaccountbucket/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-crossaccountbucket)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-crossaccountbucket.svg)](https://github.com/JamesWoolfenden/terraform-aws-crossaccountbucket/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-crossaccountbucket.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-crossaccountbucket/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-crossaccountbucket/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-crossaccountbucket&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-crossaccountbucket/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-crossaccountbucket&benchmark=INFRASTRUCTURE+SECURITY)

This module sets up an s3 buckets that is shared across aws accounts.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

It's a very simple module to use .
The module file:

````make
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
}

provider "aws" {
  region  = "eu-west-1"
  alias   = "prod"
}

````

and supply the account and canonical id to the module. The example supplies and example resource.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

| Name                                                | Version |
| --------------------------------------------------- | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws)    | n/a     |
| <a name="provider_null"></a> [null](#provider_null) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                  | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)                                         | resource    |
| [aws_s3_bucket_policy.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy)                           | resource    |
| [aws_s3_bucket_public_access_block.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource    |
| [null_resource.crossacount-share](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource)                              | resource    |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)                         | data source |
| [aws_canonical_user_id.dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/canonical_user_id)                         | data source |
| [aws_iam_policy_document.canon](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                   | data source |

## Inputs

| Name                                                                                             | Description                                                      | Type     | Default     | Required |
| ------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------- | -------- | ----------- | :------: |
| <a name="input_Secondary_account_id"></a> [Secondary_account_id](#input_Secondary_account_id)    | The account id of the secondary AWS account                      | `string` | n/a         |   yes    |
| <a name="input_aws_canonical_user_id"></a> [aws_canonical_user_id](#input_aws_canonical_user_id) | The canonical id of the account you want to share to (Secondary) | `string` | n/a         |   yes    |
| <a name="input_bucketname"></a> [bucketname](#input_bucketname)                                  | Optional name for the bucket to share                            | `string` | `""`        |    no    |
| <a name="input_mfa_delete"></a> [mfa_delete](#input_mfa_delete)                                  | To enable/disable MFA delete                                     | `bool`   | `true`      |    no    |
| <a name="input_name"></a> [name](#input_name)                                                    | Prefix to the bucketname                                         | `string` | n/a         |   yes    |
| <a name="input_sse_algorithm"></a> [sse_algorithm](#input_sse_algorithm)                         | The type of encryption algorithm to use                          | `string` | `"aws:kms"` |    no    |
| <a name="input_versioning"></a> [versioning](#input_versioning)                                  | Enable Versioning on s3 bucket                                   | `bool`   | `true`      |    no    |

## Outputs

| Name                                                                                         | Description |
| -------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_bucket"></a> [bucket](#output_bucket)                                        | n/a         |
| <a name="output_primary-canonical"></a> [primary-canonical](#output_primary-canonical)       | n/a         |
| <a name="output_secondary-canonical"></a> [secondary-canonical](#output_secondary-canonical) | n/a         |

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

Copyright 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-crossaccountbucket&url=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-crossaccountbucket&url=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
[share_email]: mailto:?subject=terraform-aws-crossaccountbucket&body=https://github.com/jameswoolfenden/terraform-aws-crossaccountbucket
