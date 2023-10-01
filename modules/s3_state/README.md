## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.3.7 |
| <a name="requirement_yandex"></a> [yandex](#requirement_yandex)          | > 0.8    |

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_yandex"></a> [yandex](#provider_yandex) | > 0.8   |

## Modules

No modules.

## Resources

| Name                                                                                                                                      | Type     |
| ----------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [yandex_kms_symmetric_key.key-a](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/kms_symmetric_key)     | resource |
| [yandex_storage_bucket.terraform_state](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/storage_bucket) | resource |

## Inputs

| Name                                                                  | Description                                         | Type       | Default           | Required |
| --------------------------------------------------------------------- | --------------------------------------------------- | ---------- | ----------------- | :------: |
| <a name="input_access_key"></a> [access_key](#input_access_key)       | S3 aws_access_key_id from storage.key               | `string`   | `""`              |    no    |
| <a name="input_bucket_name"></a> [bucket_name](#input_bucket_name)    | Terraform state storage bucket name. Must be unique | `string`   | n/a               |   yes    |
| <a name="input_default_zone"></a> [default_zone](#input_default_zone) | Default cloud zone                                  | `string`   | `"ru-central1-a"` |    no    |
| <a name="input_env"></a> [env](#input_env)                            | Environment value for labels                        | `string`   | `"dev"`           |    no    |
| <a name="input_secret_key"></a> [secret_key](#input_secret_key)       | S3 aws_secret_access_key from storage.key           | `string`   | `""`              |    no    |
| <a name="input_tags"></a> [tags](#input_tags)                         | Special tags                                        | `map(any)` | `{}`              |    no    |

## Outputs

No outputs.
