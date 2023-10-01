## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.3.7 |
| <a name="requirement_yandex"></a> [yandex](#requirement_yandex)          | > 0.8    |

## Providers

| Name                                                               | Version |
| ------------------------------------------------------------------ | ------- |
| <a name="provider_terraform"></a> [terraform](#provider_terraform) | n/a     |

## Modules

| Name                                                              | Source                                                  | Version |
| ----------------------------------------------------------------- | ------------------------------------------------------- | ------- |
| <a name="module_yc_cluster"></a> [yc_cluster](#module_yc_cluster) | github.com/terraform-yc-modules/terraform-yc-kubernetes | n/a     |

## Resources

| Name                                                                                                                            | Type        |
| ------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [terraform_remote_state.vpc](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name                                                                                       | Description                                                     | Type          | Default                                                                                                               | Required |
| ------------------------------------------------------------------------------------------ | --------------------------------------------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------- | :------: |
| <a name="input_cluster_description"></a> [cluster_description](#input_cluster_description) | K8S cluster description                                         | `string`      | `"Kubernetes test cluster"`                                                                                           |    no    |
| <a name="input_cluster_name"></a> [cluster_name](#input_cluster_name)                      | K8S cluster name. Underscore does not support                   | `string`      | `"dev-cluster"`                                                                                                       |    no    |
| <a name="input_cluster_version"></a> [cluster_version](#input_cluster_version)             | K8S cluster version                                             | `string`      | `"1.23"`                                                                                                              |    no    |
| <a name="input_default_zone"></a> [default_zone](#input_default_zone)                      | Default cloud zone                                              | `string`      | `"ru-central1-a"`                                                                                                     |    no    |
| <a name="input_env"></a> [env](#input_env)                                                 | Environment value for labels                                    | `string`      | `"dev"`                                                                                                               |    no    |
| <a name="input_master_labels"></a> [master_labels](#input_master_labels)                   | Set of key/value label pairs to assign Kubernetes master nodes. | `map(string)` | <pre>{<br> "environment": "dev",<br> "owner": "example",<br> "role": "master",<br> "service": "kubernetes"<br>}</pre> |    no    |
| <a name="input_network_state_key"></a> [network_state_key](#input_network_state_key)       | Network module state key                                        | `string`      | `"vpc.tfstate"`                                                                                                       |    no    |
| <a name="input_public_access"></a> [public_access](#input_public_access)                   | Public or private Kubernetes cluster                            | `bool`        | `true`                                                                                                                |    no    |

## Outputs

| Name                                                                                                                                   | Description                                      |
| -------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------ |
| <a name="output_external_cluster_cmd_str"></a> [external_cluster_cmd_str](#output_external_cluster_cmd_str)                            | Connection string to external Kubernetes cluster |
| <a name="output_internal_cluster_cmd_str"></a> [internal_cluster_cmd_str](#output_internal_cluster_cmd_str)                            | Connection string to internal Kubernetes cluster |
| <a name="output_kube_cluster_ca_certificate"></a> [kube_cluster_ca_certificate](#output_kube_cluster_ca_certificate)                   | PEM public Kubernetes cluster certificate        |
| <a name="output_kube_cluster_external_v4_endpoint"></a> [kube_cluster_external_v4_endpoint](#output_kube_cluster_external_v4_endpoint) | External v4 url endpoint for Kubernetes cluster  |
| <a name="output_kube_cluster_id"></a> [kube_cluster_id](#output_kube_cluster_id)                                                       | Kubernetes cluster ID                            |
| <a name="output_kube_cluster_internal_v4_endpoint"></a> [kube_cluster_internal_v4_endpoint](#output_kube_cluster_internal_v4_endpoint) | Internal v4 url endpoint for Kubernetes cluster  |
| <a name="output_kube_cluster_name"></a> [kube_cluster_name](#output_kube_cluster_name)                                                 | Kubernetes cluster name                          |
