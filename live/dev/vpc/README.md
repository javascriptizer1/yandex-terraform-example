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

| Name                                                                                                                                                      | Type     |
| --------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [yandex_vpc_default_security_group.default](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_default_security_group) | resource |
| [yandex_vpc_gateway.main](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_gateway)                                  | resource |
| [yandex_vpc_network.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network)                                  | resource |
| [yandex_vpc_route_table.k8s_subnets](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_route_table)                   | resource |
| [yandex_vpc_route_table.private_subnets](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_route_table)               | resource |
| [yandex_vpc_subnet.k8s](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet)                                     | resource |
| [yandex_vpc_subnet.private](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet)                                 | resource |
| [yandex_vpc_subnet.public](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet)                                  | resource |

## Inputs

| Name                                                                  | Description                  | Type                                                                                                | Default                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Required |
| --------------------------------------------------------------------- | ---------------------------- | --------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------: |
| <a name="input_default_zone"></a> [default_zone](#input_default_zone) | Default cloud zone           | `string`                                                                                            | `"ru-central1-a"`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |    no    |
| <a name="input_env"></a> [env](#input_env)                            | Environment value for labels | `string`                                                                                            | `"dev"`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |    no    |
| <a name="input_subnets"></a> [subnets](#input_subnets)                | Subnets                      | <pre>map(list(object({<br> name = string,<br> zone = string,<br> cidr = list(string)<br> })))</pre> | <pre>{<br> "k8s": [<br> {<br> "cidr": [<br> "10.10.0.0/24"<br> ],<br> "name": "k8s_a",<br> "zone": "ru-central1-a"<br> },<br> {<br> "cidr": [<br> "10.11.0.0/24"<br> ],<br> "name": "k8s_b",<br> "zone": "ru-central1-b"<br> }<br> ],<br> "private": [<br> {<br> "cidr": [<br> "10.0.4.0/28"<br> ],<br> "name": "private_a",<br> "zone": "ru-central1-a"<br> },<br> {<br> "cidr": [<br> "10.0.5.0/28"<br> ],<br> "name": "private_b",<br> "zone": "ru-central1-b"<br> },<br> {<br> "cidr": [<br> "10.0.6.0/28"<br> ],<br> "name": "private_c",<br> "zone": "ru-central1-c"<br> }<br> ],<br> "public": [<br> {<br> "cidr": [<br> "10.0.1.0/28"<br> ],<br> "name": "public_a",<br> "zone": "ru-central1-a"<br> },<br> {<br> "cidr": [<br> "10.0.2.0/28"<br> ],<br> "name": "public_b",<br> "zone": "ru-central1-b"<br> },<br> {<br> "cidr": [<br> "10.0.3.0/28"<br> ],<br> "name": "public_c",<br> "zone": "ru-central1-c"<br> }<br> ]<br>}</pre> |    no    |

## Outputs

| Name                                                                                                        | Description                     |
| ----------------------------------------------------------------------------------------------------------- | ------------------------------- |
| <a name="output_k8s_a_cidr"></a> [k8s_a_cidr](#output_k8s_a_cidr)                                           | K8S subnet k8s_a v4_cidr_blocks |
| <a name="output_k8s_a_id"></a> [k8s_a_id](#output_k8s_a_id)                                                 | K8S subnet k8s_a id             |
| <a name="output_k8s_b_cidr"></a> [k8s_b_cidr](#output_k8s_b_cidr)                                           | K8S subnet k8s_b v4_cidr_blocks |
| <a name="output_yc_vpc_cidr_anywhere"></a> [yc_vpc_cidr_anywhere](#output_yc_vpc_cidr_anywhere)             | v4 cidr anywhere                |
| <a name="output_yc_vpc_id"></a> [yc_vpc_id](#output_yc_vpc_id)                                              | VPC id                          |
| <a name="output_yc_vpc_k8s_cidr"></a> [yc_vpc_k8s_cidr](#output_yc_vpc_k8s_cidr)                            | K8S cidr_blocks                 |
| <a name="output_yc_vpc_k8s_subnets"></a> [yc_vpc_k8s_subnets](#output_yc_vpc_k8s_subnets)                   | K8S subnets                     |
| <a name="output_yc_vpc_private_cidr"></a> [yc_vpc_private_cidr](#output_yc_vpc_private_cidr)                | Private cidr_blocks             |
| <a name="output_yc_vpc_private_subnets"></a> [yc_vpc_private_subnets](#output_yc_vpc_private_subnets)       | Private subnets                 |
| <a name="output_yc_vpc_public_cidr"></a> [yc_vpc_public_cidr](#output_yc_vpc_public_cidr)                   | Public cidr_blocks              |
| <a name="output_yc_vpc_public_subnet_ids"></a> [yc_vpc_public_subnet_ids](#output_yc_vpc_public_subnet_ids) | Public subnet ids               |
| <a name="output_yc_vpc_public_subnets"></a> [yc_vpc_public_subnets](#output_yc_vpc_public_subnets)          | Public subnets                  |
