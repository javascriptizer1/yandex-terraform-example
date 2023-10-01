## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.3.7 |
| <a name="requirement_yandex"></a> [yandex](#requirement_yandex)          | > 0.8    |

## Providers

| Name                                                               | Version |
| ------------------------------------------------------------------ | ------- |
| <a name="provider_terraform"></a> [terraform](#provider_terraform) | n/a     |
| <a name="provider_yandex"></a> [yandex](#provider_yandex)          | > 0.8   |

## Modules

No modules.

## Resources

| Name                                                                                                                                            | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [yandex_compute_instance.postgres_a](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance)        | resource    |
| [yandex_vpc_security_group.sg_postgres_a](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_security_group) | resource    |
| [terraform_remote_state.vpc](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state)                 | data source |

## Inputs

| Name                                                                                 | Description                  | Type     | Default           | Required |
| ------------------------------------------------------------------------------------ | ---------------------------- | -------- | ----------------- | :------: |
| <a name="input_default_zone"></a> [default_zone](#input_default_zone)                | Default cloud zone           | `string` | `"ru-central1-a"` |    no    |
| <a name="input_env"></a> [env](#input_env)                                           | Environment value for labels | `string` | `"dev"`           |    no    |
| <a name="input_network_state_key"></a> [network_state_key](#input_network_state_key) | Network module state key     | `string` | `"vpc.tfstate"`   |    no    |

## Outputs

| Name                                                                                                  | Description |
| ----------------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_external_ip_postgres_a"></a> [external_ip_postgres_a](#output_external_ip_postgres_a) | n/a         |
