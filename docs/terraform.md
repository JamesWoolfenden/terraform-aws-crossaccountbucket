## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| Secondary_account_id | The account id of the secondary AWS account | string | - | yes |
| aws_canonical_user_id | The canonical id of the account you want to share to (Secondary) | string | - | yes |
| bucketname | Optional name for the bucket to share | string | `` | no |
| name | Prefix to the bucketname | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| primary-canonical | - |
| secondary-canonical | - |
