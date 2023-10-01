## Requirements

| Name                                                                        | Version  |
| --------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform)    | >= 1.3.7 |
| <a name="requirement_helm"></a> [helm](#requirement_helm)                   | 2.9.0    |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement_kubernetes) | 2.18.0   |
| <a name="requirement_yandex"></a> [yandex](#requirement_yandex)             | > 0.8    |

## Providers

| Name                                                                  | Version |
| --------------------------------------------------------------------- | ------- |
| <a name="provider_helm"></a> [helm](#provider_helm)                   | 2.9.0   |
| <a name="provider_kubernetes"></a> [kubernetes](#provider_kubernetes) | 2.18.0  |
| <a name="provider_terraform"></a> [terraform](#provider_terraform)    | n/a     |

## Modules

| Name                                                                    | Source                                 | Version |
| ----------------------------------------------------------------------- | -------------------------------------- | ------- |
| <a name="module_cert_manager"></a> [cert_manager](#module_cert_manager) | terraform-iaac/cert-manager/kubernetes | n/a     |

## Resources

| Name                                                                                                                                                                        | Type        |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [helm_release.ingress-nginx](https://registry.terraform.io/providers/hashicorp/helm/2.9.0/docs/resources/release)                                                           | resource    |
| [helm_release.prometheus-node-exporter](https://registry.terraform.io/providers/hashicorp/helm/2.9.0/docs/resources/release)                                                | resource    |
| [kubernetes_cluster_role_binding.developer-a-cluster-role-binding](https://registry.terraform.io/providers/hashicorp/kubernetes/2.18.0/docs/resources/cluster_role_binding) | resource    |
| [kubernetes_namespace.cluster_monitoring](https://registry.terraform.io/providers/hashicorp/kubernetes/2.18.0/docs/resources/namespace)                                     | resource    |
| [kubernetes_namespace.test](https://registry.terraform.io/providers/hashicorp/kubernetes/2.18.0/docs/resources/namespace)                                            | resource    |
| [kubernetes_namespace.ingress_nginx](https://registry.terraform.io/providers/hashicorp/kubernetes/2.18.0/docs/resources/namespace)                                          | resource    |
| [kubernetes_secret.developer-a-account-secret](https://registry.terraform.io/providers/hashicorp/kubernetes/2.18.0/docs/resources/secret)                                   | resource    |
| [kubernetes_service_account.developer-a](https://registry.terraform.io/providers/hashicorp/kubernetes/2.18.0/docs/resources/service_account)                                | resource    |
| [terraform_remote_state.cluster](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state)                                         | data source |

## Inputs

| Name                                                                                             | Description                  | Type     | Default                 | Required |
| ------------------------------------------------------------------------------------------------ | ---------------------------- | -------- | ----------------------- | :------: |
| <a name="input_default_zone"></a> [default_zone](#input_default_zone)                            | Default cloud zone           | `string` | `"ru-central1-a"`       |    no    |
| <a name="input_k8s_cluster_state_key"></a> [k8s_cluster_state_key](#input_k8s_cluster_state_key) | K8S Cluster module state key | `string` | `"k8s_cluster.tfstate"` |    no    |

## Outputs

| Name                                                              | Description                    |
| ----------------------------------------------------------------- | ------------------------------ |
| <a name="output_kubeconfig"></a> [kubeconfig](#output_kubeconfig) | Kubernetes config file content |
